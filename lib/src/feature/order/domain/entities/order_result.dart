import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';

class OrderResult extends Equatable {
  final String orderId;
  final String orderNumber;
  final double totalAmount;
  final String createdAt;
  final DeliveryAddress deliveryAddress;
  final String? clientSecret;
  final String paymentMethod;

  const OrderResult({
    required this.orderId,
    required this.orderNumber,
    required this.totalAmount,
    required this.createdAt,
    required this.deliveryAddress,
    required this.clientSecret,
    required this.paymentMethod,
  });
  
  @override
  List<Object?> get props => [orderId, totalAmount, createdAt, deliveryAddress, clientSecret, paymentMethod, orderNumber];
}
