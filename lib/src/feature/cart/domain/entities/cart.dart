import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_items.dart';

class Cart extends Equatable {
  final String cartId;
  final String countryId;
  final double totalAmount;
  final List<CartItem> cartItems;

  const Cart({
    required this.cartId,
    required this.countryId,
    required this.totalAmount,
    required this.cartItems,
  });

  @override
  List<Object> get props => [cartId, countryId, totalAmount, cartItems];
}
