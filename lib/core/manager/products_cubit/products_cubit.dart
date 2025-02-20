import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/manager/repo/product_repo_impl.dart';
import 'package:quick_mart_app/core/models/all_category_model/category_model.dart';
import 'package:quick_mart_app/core/models/all_product_model/product_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required this.productRepoImpl}) : super(ProductsInitial());
  final ProductRepoImpl productRepoImpl;
  List<ProductModel> allProducts = [];
  List<CategoryModel> allcategories = [];
  Map<int, List<ProductModel>> categoryMap = {};
  //
  void getAllProducts() async {
    emit(GetAllProductsLoading());
    var response = await productRepoImpl.getAllProducts();
    response.fold(
      (error) => emit(GetAllProductsFailure(errorMessage: error)),
      (allProductModel) {
        allProducts = allProductModel.allProductModelData?.products ?? [];
        // handelCategoryMap();
        emit(GetAllProductsSuccess(products: allProducts));
      },
    );
  }

  void getCategories() async {
    emit(GetAllCategoriesLoading());
    var response = await productRepoImpl.getCatergories();
    response.fold(
      (error) => emit(GetAllCategoriesFailure(errorMessage: error)),
      (allCategoryModel) {
        allcategories = allCategoryModel.allCategoryModelData?.categories ?? [];
        emit(GetAllCategoriesSuccess(categories: allcategories));
      },
    );
  }
}
