class AllCategoriesModel {
  List<String> allCategories;
  AllCategoriesModel({required this.allCategories});

  factory AllCategoriesModel.fromJson(List<String> json) {
    return AllCategoriesModel(allCategories: json);
  }
}
