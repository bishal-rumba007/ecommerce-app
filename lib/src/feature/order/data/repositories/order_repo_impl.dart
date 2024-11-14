import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/order/data/datasources/order_data_source.dart';
import 'package:ecommerce_app/src/feature/order/data/models/order_model.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_result.dart';
import 'package:ecommerce_app/src/feature/order/domain/repositories/order_repository.dart';
import 'package:ecommerce_app/src/feature/order/domain/usecases/create_order_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderDataSource orderDataSource;

  OrderRepositoryImpl(this.orderDataSource);

  @override
  Future<Either<AppException, OrderResult>> createOrder(
      CreateOrderParams order) async {
    return await orderDataSource.createOrder(order);
  }
  
  @override
  Future<Either<AppException, List<OrderModel>>> getOrders() async {
    return await orderDataSource.getOrders();
  }
}
