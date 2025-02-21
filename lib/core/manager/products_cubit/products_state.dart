// ignore_for_file: must_be_immutable

part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

// get all products state
final class GetAllProductsLoading extends ProductsState {}

final class GetAllProductsFailure extends ProductsState {
  final String errorMessage;
  GetAllProductsFailure({required this.errorMessage});
}

final class GetAllProductsSuccess extends ProductsState {
  GetAllProductsSuccess({required this.products});
  List<ProductModel> products;
}

// get all categories
final class GetAllCategoriesLoading extends ProductsState {}

final class GetAllCategoriesFailure extends ProductsState {
  final String errorMessage;
  GetAllCategoriesFailure({required this.errorMessage});
}

final class GetAllCategoriesSuccess extends ProductsState {
  GetAllCategoriesSuccess({required this.categories});
  List<CategoryModel> categories;
}

// get products in Category
final class GetProductsInCategoryLoading extends ProductsState {}

final class GetProductsInCategoryFailure extends ProductsState {
  final String errorMessage;
  GetProductsInCategoryFailure({required this.errorMessage});
}

final class GetProductsInCategorySuccess extends ProductsState {
  GetProductsInCategorySuccess({required this.products});
  List<ProductModel> products;
}

// get category products states

final class GetCategoryProductsLoading extends ProductsState {}

final class GetCategoryProductsFailure extends ProductsState {
  final String errorMessage;
  GetCategoryProductsFailure({required this.errorMessage});
}

final class GetCategoryProductsSuccess extends ProductsState {
  GetCategoryProductsSuccess({required this.products});
  List<ProductModel> products;
}
