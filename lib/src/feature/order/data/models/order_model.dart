import 'package:ecommerce_app/src/feature/address/data/models/delivery_address_model.dart';
import 'package:ecommerce_app/src/feature/order/data/models/order_item_model.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order.dart';

class OrderModel extends ProductOrder {

  const OrderModel({
    required super.orderId,
    required super.orderNumber,
    required super.totalAmount,
    required super.orderStatus,
    required super.paymentMethod,
    required super.orderItems,
    required super.deliveryAddress,
    required super.createdAt,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      orderId: json['id'] as String,
      orderNumber: json['ordernumber'] as String,
      totalAmount: json['totalamount'] as double,
      orderStatus: json['order_status'] as String,
      paymentMethod: json['payment_method'] as String,
      orderItems: (json['orderitems'] as List)
          .map((e) => OrderItemModel.fromJson(e))
          .toList(),
      deliveryAddress: DeliveryAddressModel.fromJson(json['delivery_address']),
      createdAt: json["created_at"] as String,
    );
  }
}
