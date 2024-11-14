
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_request.dart';

class CartRequestModel extends CartRequest {

  const CartRequestModel({
    required super.productStockId,
    required super.quantity,
  });

  Map<String, dynamic> toJson() {
    return {
      "productstock": super.productStockId,
      "quantity": super.quantity,
    };
  }
}