part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.cartAdded(
    String countryId, List<CartRequest> cartRequest
  ) = _CartAdded;
  const factory CartEvent.cartRemoved(
    String cartId,
    String cartItemId
  ) = _CartRemoved;
  const factory CartEvent.cartUpdated(
    String cartId, List<CartRequest> cartRequest
  ) = _CartUpdated;
  const factory CartEvent.cartFetched(
    String? countryName
  ) = _CartFetched;
  const factory CartEvent.cartCleared(String cartId) = _CartCleared;
}