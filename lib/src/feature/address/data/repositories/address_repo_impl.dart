import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/address/data/datasource/remote/address_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/address/data/models/delivery_address_model.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/address/domain/repositories/address_repository.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/add_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class AddressRepositoryImpl extends AddressRepository{
  final AddressRemoteDatasource remoteDatasource;

  AddressRepositoryImpl(this.remoteDatasource);

  @override
  Future<Either<AppException, DeliveryAddress>> addDeliveryAddress(AddDeliveryAddressParams deliveryAddress) async {
    return await remoteDatasource.addDeliveryAddress(deliveryAddress);
  }

  @override
  Future<Either<AppException, String>> deleteDeliveryAddress(String addressId) async {
    return await remoteDatasource.deleteDeliveryAddress(addressId);
  }

  @override
  Future<Either<AppException, List<DeliveryAddress>>> getDeliveryAddresses() async {
    return await remoteDatasource.getDeliveryAddresses();
  }

  @override
  Future<Either<AppException, DeliveryAddress>> updateDeliveryAddress(DeliveryAddress deliveryAddress) async {
    final address = DeliveryAddressModel.fromEntity(deliveryAddress);
    return await remoteDatasource.updateDeliveryAddress(address);
  }

}