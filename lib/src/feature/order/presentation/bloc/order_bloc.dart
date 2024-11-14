import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_result.dart';
import 'package:ecommerce_app/src/feature/order/domain/usecases/create_order_usecase.dart';
import 'package:ecommerce_app/src/feature/order/domain/usecases/get_order_usecase.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final CreateOrderUsecase createOrderUsecase;
  final GetOrderUsecase getOrderUsecase;

  OrderBloc({
    required this.createOrderUsecase,
    required this.getOrderUsecase,
  }) : super(_Initial()) {
    on<_OrderCreated>(_onOrderCreated);
    on<_FetchedOrders>(_onFetchedOrders);
  }

  Future<void> _onOrderCreated(
    _OrderCreated event,
    Emitter<OrderState> emit,
  ) async {
    emit(OrderState.loading());
    final response = await createOrderUsecase.call(event.params);

    response.fold(
      (exception) => emit(OrderState.failure(exception.message)),
      (result) => emit(
        OrderState<OrderResult>.success(result)
      ),
    );
  }

  Future<void> _onFetchedOrders(
    _FetchedOrders event,
    Emitter<OrderState> emit,
  ) async {
    emit(OrderState.loading());
    final response = await getOrderUsecase.call();

    response.fold(
      (exception) => emit(OrderState.failure(exception.message)),
      (result) => emit(
        OrderState<List<ProductOrder>>.success(result)
      ),
    );
  }
}
