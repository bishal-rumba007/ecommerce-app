import 'package:ecommerce_app/src/feature/checkout/domain/entities/check_out_item.dart';

class CheckOutItemModel extends CheckOutItem{

  const CheckOutItemModel({
    required super.productStockId,
    required super.productName,
    required super.countryName,
    required super.quantity,
    required super.price,
  });

  factory CheckOutItemModel.fromJson(Map<String, dynamic> json) {
    final productStock = json['productstock'];
    return CheckOutItemModel(
      productStockId: productStock['id'],
      productName: productStock['product']['product_name'],
      countryName: productStock['country']['name'],
      quantity: json['quantity'],
      price: json['price'],
    );
  }

  @override
  List<Object> get props => [productStockId, productName, countryName, quantity, price];
}