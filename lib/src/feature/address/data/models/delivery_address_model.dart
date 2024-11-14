import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';

class DeliveryAddressModel extends DeliveryAddress {
  const DeliveryAddressModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.addressTitle,
    required super.countryRegion,
    required super.streetAddress,
    super.apartmentNumber,
    required super.state,
    super.landmark,
    super.area,
    required super.townCity,
    super.zipCode,
    required super.phone,
    required super.email,
    required super.isDefault,
  });

  factory DeliveryAddressModel.fromJson(Map<String, dynamic> json) {
    return DeliveryAddressModel(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      addressTitle: json['company_name'] as String,
      countryRegion: json['country_region'] as String,
      streetAddress: json['street_address'] as String,
      apartmentNumber: json['apartment_number'] as String?,
      state: json['state'] as String,
      landmark: json['landmark'] as String?,
      area: json['area'] as String?,
      townCity: json['town_city'] as String,
      zipCode: json['zip_code'] as String?,
      phone: json['phone'] as String,
      email: json['email'] as String,
      isDefault: json['set_default'] as bool,
    );
  }

  factory DeliveryAddressModel.fromEntity(DeliveryAddress deliveryAddress) {
    return DeliveryAddressModel(
      id: deliveryAddress.id,
      firstName: deliveryAddress.firstName,
      lastName: deliveryAddress.lastName,
      addressTitle: deliveryAddress.addressTitle,
      countryRegion: deliveryAddress.countryRegion,
      streetAddress: deliveryAddress.streetAddress,
      apartmentNumber: deliveryAddress.apartmentNumber,
      state: deliveryAddress.state,
      landmark: deliveryAddress.landmark,
      area: deliveryAddress.area,
      townCity: deliveryAddress.townCity,
      zipCode: deliveryAddress.zipCode,
      phone: deliveryAddress.phone,
      email: deliveryAddress.email,
      isDefault: deliveryAddress.isDefault,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'company_name': addressTitle,
      'country_region': countryRegion,
      'street_address': streetAddress,
      'apartment_number': apartmentNumber,
      'state': state,
      'landmark': landmark,
      'area': area,
      'town_city': townCity,
      'zip_code': zipCode,
      'phone': phone,
      'email': email,
      'is_default': isDefault,
    };
  }
}
