class CategoryModel {
  num? id;
  String? name;
  String? image;

  CategoryModel({this.id, this.name, this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: num.tryParse(json['id'].toString()),
        name: json['name']?.toString(),
        image: json['image']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (id != null) 'id': id,
        if (name != null) 'name': name,
        if (image != null) 'image': image,
      };
}
