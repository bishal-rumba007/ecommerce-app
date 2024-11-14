import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';

part 'product_stock_cubit.freezed.dart';
part 'product_stock_state.dart';

class ProductStockCubit extends Cubit<ProductStockState> {
  ProductStockCubit() : super(ProductStockState());

  void selectProductStock(ProductStock productStock) {
    emit(ProductStockState(selectedProductStock: productStock));
  }
}
