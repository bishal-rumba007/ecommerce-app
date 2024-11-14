import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_stock.dart';

class CartItem extends Equatable {
  final String cartId;
  final CartStock cartStock;       // <-- sharing flash item in cart becase it is similar to cart item response
  final int quantity;
  final double price;

  const CartItem({
    required this.cartId,
    required this.cartStock,
    required this.quantity,
    required this.price,
  });

  @override
  List<Object> get props => [cartId, cartStock, quantity, price];
}
