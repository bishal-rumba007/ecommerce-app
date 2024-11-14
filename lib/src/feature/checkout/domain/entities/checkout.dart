import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/check_out_item.dart';

class Checkout extends Equatable {
  final String id;
  final double totalAmount;
  final List<CheckOutItem> checkOutItem;

  const Checkout({
    required this.id,
    required this.totalAmount,
    required this.checkOutItem,
  });

  @override
  List<Object?> get props => [id, totalAmount, checkOutItem];
}
