import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/order/data/models/order_model.dart';
import 'package:ecommerce_app/src/feature/order/data/models/order_result_model.dart';
import 'package:ecommerce_app/src/feature/order/domain/usecases/create_order_usecase.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class OrderDataSource {
  Future<Either<AppException, OrderResultModel>> createOrder(
      CreateOrderParams order);
  Future<Either<AppException, List<OrderModel>>> getOrders();
}

class OrderDataSourceImpl implements OrderDataSource {
  final NetworkService networkService;

  OrderDataSourceImpl({required this.networkService});

  @override
  Future<Either<AppException, OrderResultModel>> createOrder(
      CreateOrderParams order) async {
    try {
      final response = await networkService.post(
        AppConfig.createOrder,
        data: {
          "currency": order.currency,
          "delivery_address": order.addressId,
          "payment_method": order.paymentMethod,
          "items": order.items.map((e) {
            return {
              "productstock": e.productStockId,
              "quantity": e.quantity,
            };
          }).toList(),
          if (order.couponId != null) "coupon": order.couponId,
        },
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final orderResult = OrderResultModel.fromJson(result.data);
          return Right(orderResult);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Failed to Place Order",
          statusCode: 1,
          identifier: "${e.toString()}\nOrderDataSourceImpl.createOrder",
        ),
      );
    }
  }
  
  @override
  Future<Either<AppException, List<OrderModel>>> getOrders() async {
    try {
      final response = await networkService.get(AppConfig.orderList);
      return response.fold(
        (exception) => Left(exception),
        (result) {
          final orders = (result.data as List<dynamic>)
              .map((e) => OrderModel.fromJson(e))
              .toList();
          return Right(orders);
        },
      );
    } catch(e) {
      return Left(
        AppException(
          message: "Failed to get Orders",
          statusCode: 1,
          identifier: "${e.toString()}\nOrderDataSourceImpl.getOrders",
        ),
      );
    }
  }
}
