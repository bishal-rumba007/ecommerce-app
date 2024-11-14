import 'package:equatable/equatable.dart';

class CartRequest extends Equatable {
  final String productStockId;
  final int quantity;

  const CartRequest({
    required this.productStockId,
    required this.quantity,
  });

  @override
  List<Object> get props => [productStockId, quantity];
}
