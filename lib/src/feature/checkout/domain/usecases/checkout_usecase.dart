import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/checkout.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/repositories/checkout_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class CheckoutUsecase
    extends UsecaseWithParam<Checkout, List<Map<String, dynamic>>> {
  final CheckoutRepository repository;

  CheckoutUsecase(this.repository);

  @override
  Future<Either<AppException, Checkout>> call(
      List<Map<String, dynamic>> params) async {
    return await repository.cartCheckOut(params);
  }
}
