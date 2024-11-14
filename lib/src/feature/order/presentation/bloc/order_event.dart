part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.orderCreated(
    CreateOrderParams params
  ) = _OrderCreated;
  const factory OrderEvent.fetchedOrders() = _FetchedOrders;
}