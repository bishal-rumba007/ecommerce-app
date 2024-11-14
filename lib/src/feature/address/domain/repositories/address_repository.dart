import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/add_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class AddressRepository {
  Future<Either<AppException, List<DeliveryAddress>>> getDeliveryAddresses();
  Future<Either<AppException, DeliveryAddress>> addDeliveryAddress(AddDeliveryAddressParams deliveryAddress);
  Future<Either<AppException, DeliveryAddress>> updateDeliveryAddress(DeliveryAddress deliveryAddress);
  Future<Either<AppException, String>> deleteDeliveryAddress(String addressId);
}
