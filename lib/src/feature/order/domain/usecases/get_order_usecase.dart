import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order.dart';
import 'package:ecommerce_app/src/feature/order/domain/repositories/order_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetOrderUsecase extends Usecase<List<ProductOrder>> {
  final OrderRepository orderRepository;

  GetOrderUsecase(this.orderRepository);

  @override
  Future<Either<AppException, List<ProductOrder>>> call() async {
    return await orderRepository.getOrders();
  }
}