class MedicineDetailsModel {
  int? id;
  String? image;
  String? name;
  String? description;


  MedicineDetailsModel({
    this.id,
    this.name,
    this.image,
    this.description,

  });

  MedicineDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    name = json['name']??'';
    image = json['image']??'';
    description = json['description']??"";

  }
}
