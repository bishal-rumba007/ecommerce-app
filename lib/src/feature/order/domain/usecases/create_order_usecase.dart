import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/check_out_item.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_result.dart';
import 'package:ecommerce_app/src/feature/order/domain/repositories/order_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class CreateOrderUsecase extends UsecaseWithParam<OrderResult, CreateOrderParams> {
  final OrderRepository orderRepository;

  CreateOrderUsecase(this.orderRepository);

  @override
  Future<Either<AppException, OrderResult>> call(CreateOrderParams params) async {
    return await orderRepository.createOrder(params);
  }
}

class CreateOrderParams extends Equatable {
  final String addressId;
  final String currency;
  final String paymentMethod;
  final String? couponId;
  final List<CheckOutItem> items;

  const CreateOrderParams(
      {required this.addressId,
      required this.currency,
      required this.paymentMethod,
      this.couponId,
      required this.items});

  @override
  List<Object?> get props =>
      [addressId, currency, paymentMethod, couponId, items];
}
