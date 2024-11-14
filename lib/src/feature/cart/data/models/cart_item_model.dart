import 'package:ecommerce_app/src/feature/cart/data/models/cart_stock_model.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_items.dart';

class CartItemModel extends CartItem {

  const CartItemModel({
    required super.cartId,
    required super.cartStock,
    required super.quantity,
    required super.price,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      cartId: json['id'],
      cartStock: CartStockModel.fromJson(json['productstock']),
      quantity: json['quantity'],
      price: json['price'],
    );
  }
}
