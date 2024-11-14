import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/address/data/models/delivery_address_model.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/add_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class AddressRemoteDatasource {
  Future<Either<AppException, List<DeliveryAddressModel>>>
      getDeliveryAddresses();
  Future<Either<AppException, DeliveryAddressModel>> addDeliveryAddress(
      AddDeliveryAddressParams deliveryAddress);
  Future<Either<AppException, DeliveryAddressModel>> updateDeliveryAddress(
      DeliveryAddressModel deliveryAddress);
  Future<Either<AppException, String>> deleteDeliveryAddress(String addressId);
}

class AddressRemoteDatasourceImpl implements AddressRemoteDatasource {
  final NetworkService networkService;

  AddressRemoteDatasourceImpl(this.networkService);

  @override
  Future<Either<AppException, DeliveryAddressModel>> addDeliveryAddress(
    AddDeliveryAddressParams deliveryAddress,
  ) async {
    try {
      final response = await networkService.post(
        AppConfig.addAddress,
        data: {
          "first_name": deliveryAddress.firstName,
          "last_name": deliveryAddress.lastName,
          "company_name": deliveryAddress.addressTitle,
          "country_region": deliveryAddress.countryRegion,
          "street_address": deliveryAddress.streetAddress,
          "state": deliveryAddress.state,
          "town_city": deliveryAddress.townCity,
          "zip_code": deliveryAddress.zipCode,
          "phone": deliveryAddress.phone,
          "email": deliveryAddress.email,
        },
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data;
          final address = DeliveryAddressModel.fromJson(data);
          return Right(address);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Error adding address",
          statusCode: 1,
          identifier: "${e.toString()}\nCartRemoteDatasourceImpl.addToCart",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, String>> deleteDeliveryAddress(
      String addressId) async {
    try {
      final response = await networkService.delete(
        AppConfig.deleteAddress(addressId),
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          return Right("Address deleted successfully");
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Failed to delete address",
          statusCode: 1,
          identifier:
              "${e.toString()}\nCartRemoteDatasourceImpl.deleteDeliveryAddress",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, List<DeliveryAddressModel>>>
      getDeliveryAddresses() async {
    try {
      final response = await networkService.get(AppConfig.getAddress);
      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data as List<dynamic>;
          final addresses = data.isEmpty
              ? <DeliveryAddressModel>[]
              : List<DeliveryAddressModel>.from(
                  data.map((address) => DeliveryAddressModel.fromJson(address)),
                );
          return Right(addresses);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Failed to get delivery addresses",
          statusCode: 1,
          identifier:
              "${e.toString()}\nAddressRemoteDatasourceImpl.getDeliveryAddresses",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, DeliveryAddressModel>> updateDeliveryAddress(
      DeliveryAddressModel deliveryAddress) async {
    try {
      final response = await networkService.put(
        AppConfig.editAddress(deliveryAddress.id),
        data: deliveryAddress.toJson(),
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data;
          final address = DeliveryAddressModel.fromJson(data);
          return Right(address);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Failed to update address",
          statusCode: 1,
          identifier:
              "${e.toString()}\nCartRemoteDatasourceImpl.updateDeliveryAddress",
        ),
      );
    }
  }
}
