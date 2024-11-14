import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/address/domain/repositories/address_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class AddDeliveryAddressUsecase extends UsecaseWithParam<DeliveryAddress, AddDeliveryAddressParams> {
  final AddressRepository repository;

 AddDeliveryAddressUsecase(this.repository);

  @override
  Future<Either<AppException, DeliveryAddress>> call(AddDeliveryAddressParams params) async {
    return await repository.addDeliveryAddress(params);
  }
}

class AddDeliveryAddressParams {
  final String firstName;
  final String lastName;
  final String addressTitle;
  final String countryRegion;
  final String streetAddress;
  final String state;
  final String townCity;
  final String? zipCode;
  final String phone;
  final String email;


  AddDeliveryAddressParams({
    required this.firstName,
    required this.lastName,
    required this.addressTitle,
    required this.countryRegion,
    required this.streetAddress,
    required this.state,
    required this.townCity,
    this.zipCode,
    required this.phone,
    required this.email,
  });
}