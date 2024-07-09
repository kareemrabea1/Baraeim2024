class AllMedicineModel {
  int?id;
  String? image;
  String? title;
  String? name;

  AllMedicineModel({
    this.id,
    this.image,
    this.title,
    this.name,
  });

  AllMedicineModel.fromJson(Map<String, dynamic> json) {
    id=json['id']??0;
    name = json['name'] ?? '';
    image = json['image'] ?? '';
    title = json['title'] ?? '';
  }
}
