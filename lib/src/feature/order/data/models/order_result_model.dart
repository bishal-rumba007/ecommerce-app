import 'package:ecommerce_app/src/feature/address/data/models/delivery_address_model.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_result.dart';

class OrderResultModel extends OrderResult {
  const OrderResultModel({
    required super.orderId,
    required super.orderNumber,
    required super.totalAmount,
    required super.createdAt,
    required super.deliveryAddress,
    required super.clientSecret,
    required super.paymentMethod,
  });

  factory OrderResultModel.fromJson(Map<String, dynamic> json) {
    final order = json['order'];
    return OrderResultModel(
      orderId: order['id'] as String,
      orderNumber: order['ordernumber'] as String,
      totalAmount: order['totalamount'] as double,
      deliveryAddress: DeliveryAddressModel.fromJson(order['delivery_address']),
      createdAt: order["created_at"] as String,
      clientSecret: json['client_secret'] as String?,
      paymentMethod: order['payment_method'] as String,
    );
  }
}