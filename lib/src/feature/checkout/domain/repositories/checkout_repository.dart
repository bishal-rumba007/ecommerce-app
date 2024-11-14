
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/checkout.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class CheckoutRepository {
  Future<Either<AppException, Checkout>> cartCheckOut(List<Map<String, dynamic>> items);
}