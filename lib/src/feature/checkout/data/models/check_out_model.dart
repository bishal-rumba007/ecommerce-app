import 'package:ecommerce_app/src/feature/checkout/data/models/check_out_item_model.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/checkout.dart';

class CheckOutModel extends Checkout{
  const CheckOutModel({
    required super.id,
    required super.totalAmount,
    required super.checkOutItem,
  });

  factory CheckOutModel.fromJson(Map<String, dynamic> json) {
    return CheckOutModel(
      id: json['id'],
      totalAmount: json['totalamount'],
      checkOutItem: (json["checkoutitems"] as List).map((item) => CheckOutItemModel.fromJson(item)).toList(),
    );
  }

  @override
  List<Object> get props => [id, totalAmount, checkOutItem];
}