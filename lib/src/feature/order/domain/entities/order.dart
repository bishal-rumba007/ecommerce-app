import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_item.dart';

class ProductOrder extends Equatable {
  final String orderId;
  final String orderNumber;
  final double totalAmount;
  final String orderStatus;
  final String paymentMethod;
  final List<OrderItem> orderItems;
  final DeliveryAddress deliveryAddress;
  final String createdAt;

  const ProductOrder({
    required this.orderId,
    required this.orderNumber,
    required this.totalAmount,
    required this.orderStatus,
    required this.paymentMethod,
    required this.orderItems,
    required this.deliveryAddress,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
        orderId,
        orderNumber,
        totalAmount,
        paymentMethod,
        orderItems,
        deliveryAddress,
        createdAt,
      ];
}
