import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/flash_sale.dart';
import 'package:ecommerce_app/src/feature/home/domain/usecases/get_flash_sale_usecase.dart';

part 'flash_sale_bloc.freezed.dart';
part 'flash_sale_event.dart';
part 'flash_sale_state.dart';

class FlashSaleBloc extends Bloc<FlashSaleEvent, FlashSaleState> {
  final GetFlashSaleUsecase getFlashSaleUsecase;
  FlashSaleBloc({
    required this.getFlashSaleUsecase,
  }) : super(const FlashSaleState.initial()) {
    on<FetchedFlashSale>(_onFetchedFlashSale);
  }

  Future<void> _onFetchedFlashSale(
    FetchedFlashSale event,
    Emitter<FlashSaleState> emit,
  ) async {
    emit(const _Loading());
    final response = await getFlashSaleUsecase.call(event.selectedCountry);
    response.fold(
      (exception) => emit(_Error(exception.message)),
      (result) => emit(_Loaded(result)),
    );
  }
}
