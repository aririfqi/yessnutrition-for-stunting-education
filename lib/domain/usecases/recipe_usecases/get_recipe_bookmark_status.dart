import 'package:dartz/dartz.dart';
import 'package:yess_nutrition/common/utils/failure.dart';
import 'package:yess_nutrition/domain/entities/recipe_entity.dart';
import 'package:yess_nutrition/domain/repositories/recipe_repository.dart';

class GetRecipeBookmarkStatus {
  final RecipeRepository _repository;

  GetRecipeBookmarkStatus(this._repository);

  Future<Either<Failure, bool>> execute(RecipeEntity recipe) {
    return _repository.isRecipeBookmarkExist(recipe);
  }
}
