class CategoryModel {
  int? id;
  String? name;
  String? image;
  DateTime? creationAt;
  DateTime? updatedAt;

  CategoryModel({
    this.id,
    this.name,
    this.image,
    this.creationAt,
    this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
        creationAt: json['creationAt'] == null
            ? null
            : DateTime.parse(json['creationAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'creationAt': creationAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}
