import 'package:ecommerce_app/src/feature/cart/data/models/cart_item_model.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';

class CartModel extends Cart {

  const CartModel({
    required super.cartId,
    required super.countryId,
    required super.totalAmount,
    required super.cartItems,
  });

  CartModel.empty() : super(cartId: "", countryId: "", totalAmount: 0, cartItems: []);

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      cartId: json['id'],
      countryId: json['country'],
      totalAmount: json['totalamount'],
      cartItems: (json['items'] as List).map((e) => CartItemModel.fromJson(e)).toList(),
    );
  }
}
