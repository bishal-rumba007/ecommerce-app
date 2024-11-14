import 'package:equatable/equatable.dart';

class DeliveryAddress extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String addressTitle;
  final String countryRegion;
  final String streetAddress;
  final String? apartmentNumber;
  final String state;
  final String? landmark;
  final String? area;
  final String townCity;
  final String? zipCode;
  final String phone;
  final String email;
  final bool isDefault;

  const DeliveryAddress({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.addressTitle,
    required this.countryRegion,
    required this.streetAddress,
    this.apartmentNumber,
    required this.state,
    this.landmark,
    this.area,
    required this.townCity,
    this.zipCode,
    required this.phone,
    required this.email,
    required this.isDefault,
  });

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        addressTitle,
        countryRegion,
        streetAddress,
        apartmentNumber,
        state,
        landmark,
        area,
        townCity,
        zipCode,
        phone,
        email,
        isDefault,
      ];
}
