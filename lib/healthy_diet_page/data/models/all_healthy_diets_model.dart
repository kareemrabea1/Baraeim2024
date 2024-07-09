class AllHealthyDietsModel {
  String? image;
  int?id;
  String? title;
  String? name;

  AllHealthyDietsModel({
    this.image,
    this.title,
    this.name,
    this.id,
  });

  AllHealthyDietsModel.fromJson(Map<String, dynamic> json) {
    id=json['id']??0;
    name = json['name'] ?? '';
    image = json['image'] ?? '';
    title = json['title'] ?? '';
  }
}
