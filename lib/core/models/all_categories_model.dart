class AllCategoriesModel {
  List<dynamic> allCategories;
  AllCategoriesModel({required this.allCategories});

  factory AllCategoriesModel.fromJson(List<String> json) {
    return AllCategoriesModel(allCategories: json as List<dynamic>);
  }
}
