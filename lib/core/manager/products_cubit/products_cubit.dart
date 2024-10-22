import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/manager/repo/product_repo_impl.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required this.productRepoImpl}) : super(ProductsInitial());
  final ProductRepoImpl productRepoImpl;
  List<ProductModel> allProducts = [];
  List<dynamic> allcategories = [];
  void getAllProducts() async {
    emit(GetAllProductsLoading());
    var response = await productRepoImpl.getAllProducts();
    response.fold(
      (error) => emit(GetAllProductsFailure(errorMessage: error)),
      (products) {
        allProducts = products;
        emit(GetAllProductsSuccess(products: products));
      },
    );
  }

  void getCategories() async {
    emit(GetAllCategoriesLoading());
    var response = await productRepoImpl.getCatergories();
    response.fold(
      (error) => emit(GetAllCategoriesFailure(errorMessage: error)),
      (categories) {
        allcategories = categories;
        emit(GetAllCategoriesSuccess(categories: categories));
      },
    );
  }

  List<ProductModel> getProductsInCategory(String categoryId) {
    if (allProducts.isEmpty) {
      return [];
    } else {
      return allProducts
          .where((product) => product.category == categoryId)
          .toList();
    }
  }
}
