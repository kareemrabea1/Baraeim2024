class HealthyDietDetailsModel {
  int? id;
  String? image;
  String? title;
  String? description;
  String? calories;
  String? fat;
  String? protein;
  String? carbs;

  HealthyDietDetailsModel({
    this.id,
    this.title,
    this.image,
    this.description,
    this.calories,
    this.carbs,
    this.fat,
    this.protein,
  });

  HealthyDietDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    title = json['title']??'';
    image = json['image']??'';
    description = json['description']??"";
    calories = json['calories']??'';
    carbs = json['carbs']??'';
    fat = json['fat']??'';
    protein = json['protein']??'';
  }
}
