import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';
import 'package:yess_nutrition/common/utils/utilities.dart';
import 'package:yess_nutrition/data/models/food_models/food_table.dart';
import 'package:yess_nutrition/data/models/recipe_models/recipe_table.dart';
import 'package:yess_nutrition/data/models/schedule_models/alarm_model.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._instance() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._instance();

  late Database _database;

  Future<Database> get database async {
    _database = await _initializeDb('yess_nutrition.db');

    return _database;
  }

  /// Initialize, create, and open database
  Future<Database> _initializeDb(String file) async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, file);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      password: Utilities.encryptText('yess_nutrition_db'),
    );
  }

  /// Create database table
  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
        '''
      CREATE TABLE $alarmScheduleTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        uid TEXT,
        title TEXT,
        scheduledAt TEXT,
        isActive INTEGER,
        gradientColorIndex INTEGER)
        ''');

    await db.execute(
        '''
      CREATE TABLE $foodHistoryTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        uid TEXT,
        label TEXT,
        category TEXT,
        categoryLabel TEXT,
        foodContentsLabel TEXT,
        image TEXT,
        nutrients TEXT,
        createdAt TEXT)
        ''');

    await db.execute(
        '''
      CREATE TABLE $recipeBookmarksTable (
        _id INTEGER PRIMARY KEY AUTOINCREMENT,
        uid TEXT,
        recipeId TEXT,
        label TEXT,
        image TEXT,
        url TEXT,
        totalServing INTEGER,
        totalTime INTEGER,
        calories REAL)
        ''');
  }

  /// added [alarm] to alarm schedule table
  Future<int> createAlarm(AlarmModel alarm) async {
    final db = await database;

    return await db.insert(alarmScheduleTable, alarm.toMap());
  }

  /// get all scheduled alarm, according to [uid]
  Future<List<AlarmModel>> getAlarms(String uid) async {
    final db = await database;

    final result = await db.query(
      alarmScheduleTable,
      where: 'uid = ?',
      whereArgs: [uid],
    );

    final alarms = List<AlarmModel>.from(
      result.map((alarm) => AlarmModel.fromMap(alarm)),
    );

    return alarms;
  }

  /// update previous alarm with new [alarm] value
  Future<int> updateAlarm(AlarmModel alarm) async {
    final db = await database;

    return await db.update(
      alarmScheduleTable,
      alarm.toMap(),
      where: 'id = ? AND uid = ?',
      whereArgs: [alarm.id, alarm.uid],
    );
  }

  /// delete [alarm] from alarm schedule table
  Future<int> deleteAlarm(AlarmModel alarm) async {
    final db = await database;

    return await db.delete(
      alarmScheduleTable,
      where: 'id = ? AND uid = ?',
      whereArgs: [alarm.id, alarm.uid],
    );
  }

  /// added [food] to history table
  Future<int> addFoodHistory(FoodTable food) async {
    final db = await database;

    return await db.insert(foodHistoryTable, food.toMap());
  }

  /// get all food histories, according to [uid]
  Future<List<FoodTable>> getFoodHistories(String uid) async {
    final db = await database;

    final result = await db.query(
      foodHistoryTable,
      where: 'uid = ?',
      whereArgs: [uid],
      orderBy: 'createdAt DESC',
    );

    final foods = List<FoodTable>.from(
      result.map((food) => FoodTable.fromMap(food)),
    );

    return foods;
  }

  /// delete [food] from history table
  Future<int> deleteFoodHistory(FoodTable food) async {
    final db = await database;

    return await db.delete(
      foodHistoryTable,
      where: 'id = ? AND uid = ?',
      whereArgs: [food.id, food.uid],
    );
  }

  /// clear all food histories from history table, according to [uid]
  Future<int> clearFoodHistories(String uid) async {
    final db = await database;

    return await db.delete(
      foodHistoryTable,
      where: 'uid = ?',
      whereArgs: [uid],
    );
  }

  /// added [recipe] to recipe bookmarks table
  Future<int> createRecipeBookmark(RecipeTable recipe) async {
    final db = await database;

    return await db.insert(recipeBookmarksTable, recipe.toMap());
  }

  /// get all recipes at recipe bookmarks table, according to [uid]
  Future<List<RecipeTable>> getRecipeBookmarks(String uid) async {
    final db = await database;

    final result = await db.query(
      recipeBookmarksTable,
      where: 'uid = ?',
      whereArgs: [uid],
      orderBy: '_id DESC',
    );

    final recipes = List<RecipeTable>.from(
      result.map((bookmark) => RecipeTable.fromMap(bookmark)),
    );

    return recipes;
  }

  /// delete [recipe] from recipe bookmarks table
  Future<int> deleteRecipeBookmark(RecipeTable recipe) async {
    final db = await database;

    return await db.delete(
      recipeBookmarksTable,
      where: 'uid = ? AND recipeId = ?',
      whereArgs: [recipe.uid, recipe.recipeId],
    );
  }

  /// clear all recipes from recipe bookmarks table, according to [uid]
  Future<int> clearRecipeBookmarks(String uid) async {
    final db = await database;

    return await db.delete(
      recipeBookmarksTable,
      where: 'uid = ?',
      whereArgs: [uid],
    );
  }

  /// check whether [recipe] is already in recipe bookmarks table or not
  Future<bool> isRecipeBookmarkExist(RecipeTable recipe) async {
    final db = await database;

    final result = await db.query(
      recipeBookmarksTable,
      where: 'uid = ? AND recipeId = ?',
      whereArgs: [recipe.uid, recipe.recipeId],
    );

    if (result.isNotEmpty) return Future.value(true);

    return Future.value(false);
  }
}
