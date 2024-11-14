part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.fetchedAddress() = _FetchedAddress;
  const factory AddressEvent.addressAdded(AddDeliveryAddressParams address) = _AddressAdded;
  const factory AddressEvent.adressUpdated(DeliveryAddress address) = _AddressUpdated;
  const factory AddressEvent.addressDeleted(DeliveryAddress address) = _AddressDeleted;
  const factory AddressEvent.addressSelected(DeliveryAddress address) = _AddressSelected;
}