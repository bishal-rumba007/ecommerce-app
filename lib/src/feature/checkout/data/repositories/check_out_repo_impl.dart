import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/checkout/data/datasource/check_out_datasource.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/checkout.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/repositories/checkout_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class CheckOutRepositoryImpl implements CheckoutRepository {
  final CheckOutDatasource datasource;

  CheckOutRepositoryImpl(this.datasource);

  @override
  Future<Either<AppException, Checkout>> cartCheckOut(
      List<Map<String, dynamic>> items) async {
    return await datasource.checkOut(items);
  }
}
