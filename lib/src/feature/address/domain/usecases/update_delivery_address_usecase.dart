import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/address/domain/repositories/address_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class UpdateDeliveryAddressUsecase extends UsecaseWithParam<DeliveryAddress, DeliveryAddress> {
  final AddressRepository repository;

 UpdateDeliveryAddressUsecase(this.repository);

  @override
  Future<Either<AppException, DeliveryAddress>> call(DeliveryAddress params) async {
    return await repository.updateDeliveryAddress(params);
  }
}
