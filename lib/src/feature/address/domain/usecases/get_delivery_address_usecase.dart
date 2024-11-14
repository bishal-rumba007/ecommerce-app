import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/address/domain/repositories/address_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetDeliveryAddressUsecase extends Usecase<List<DeliveryAddress>> {
  final AddressRepository repository;

  GetDeliveryAddressUsecase(this.repository);

  @override
  Future<Either<AppException, List<DeliveryAddress>>> call() async {
    return await repository.getDeliveryAddresses();
  }
}
