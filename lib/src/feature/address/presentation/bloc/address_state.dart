part of 'address_bloc.dart';

enum AddressStatus { initial, loading, loaded, error }

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    @Default(AddressStatus.initial) AddressStatus status,
    @Default(<DeliveryAddress>[]) List<DeliveryAddress> address,
    @Default(null) DeliveryAddress? selectedAddress,
    String? message,
    @Default(false) bool isDeletion,
  }) = _AddressState;
}
