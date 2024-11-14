import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_result.dart';
import 'package:ecommerce_app/src/feature/order/domain/usecases/create_order_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class OrderRepository {
  Future<Either<AppException, OrderResult>> createOrder(CreateOrderParams order);
  Future<Either<AppException, List<ProductOrder>>> getOrders();
}
