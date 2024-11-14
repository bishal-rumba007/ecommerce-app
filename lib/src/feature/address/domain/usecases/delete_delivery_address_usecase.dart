import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/repositories/address_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class DeleteDeliveryAddressUsecase extends UsecaseWithParam<String, String> {
  final AddressRepository repository;

  DeleteDeliveryAddressUsecase(this.repository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await repository.deleteDeliveryAddress(params);
  }
}
