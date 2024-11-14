import 'package:equatable/equatable.dart';

class CheckOutItem extends Equatable {
  final String productStockId;
  final double price;
  final int quantity;
  final String productName;
  final String countryName;

  const CheckOutItem({
    required this.productStockId,
    required this.price,
    required this.quantity,
    required this.productName,
    required this.countryName,
  });

  @override
  List<Object> get props => [
        productStockId,
        price,
        quantity,
        productName,
        countryName,
      ];
}
