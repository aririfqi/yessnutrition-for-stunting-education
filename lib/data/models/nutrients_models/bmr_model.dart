class BMRModel {
  late int? calories, karbohidrat, protein, lemak;

  BMRModel({
    required this.calories,
    required this.karbohidrat,
    required this.protein,
    required this.lemak,
  });
}

var bmrModel = [BMRModel(calories: 0, karbohidrat: 0, protein: 0, lemak: 0)];
