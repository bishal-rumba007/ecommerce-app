import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/checkout.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/usecases/checkout_usecase.dart';

part 'check_out_bloc.freezed.dart';
part 'check_out_event.dart';
part 'check_out_state.dart';

class CheckOutBloc extends Bloc<CheckOutEvent, CheckOutState> {
  final CheckoutUsecase checkoutUsecase;
  CheckOutBloc({
    required this.checkoutUsecase,
  }) : super(_Initial()) {
   on<_CheckedOut>(_onCheckedOut);
  }

  Future<void> _onCheckedOut(
    _CheckedOut event,
    Emitter<CheckOutState> emit,
  ) async {
    emit(CheckOutState.loading());
    final response = await checkoutUsecase.call(event.items);

    response.fold(
      (exception) {
        emit(CheckOutState.error(message: exception.message));
      },
      (checkout) {
        emit(CheckOutState.loaded(checkout));
      },
    );
  }
}
