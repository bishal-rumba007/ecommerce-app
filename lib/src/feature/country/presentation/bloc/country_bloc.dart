import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/country/domain/usecase/get_selected_country_usecase.dart';
import 'package:ecommerce_app/src/feature/country/domain/usecase/set_selected_country_usecase.dart';
import 'package:ecommerce_app/src/shared/enums/country.dart';

part 'country_bloc.freezed.dart';
part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final GetSelectedCountryUsecase getSelectedCountryUsecase;
  final SetSelectedCountryUsecase setSelectedCountryUsecase;
  CountryBloc({
    required this.getSelectedCountryUsecase,
    required this.setSelectedCountryUsecase,
  }) : super(CountryState()) {
    on<SetCountryPreference>(_onSetCountryPreference);
    on<FetchedCountryPreference>(_onFetchedCountryPreference);
  }

  // Fetches the selected country preference from the local storage
  // and updates the state with the selected country preference value
  // if the usecase call is successful otherwise sets the state with the null
  // because the selected country preference is not set yet and the user
  // should be asked to select the country preference first
  Future<void> _onFetchedCountryPreference(
    FetchedCountryPreference event,
    Emitter<CountryState> emit,
  ) async {
    final response = await getSelectedCountryUsecase.call();
    response.fold(
      (l) => emit(state.copyWith(country: null)),
      (r) => emit(state.copyWith(country: r)),
    );
  }


  // Sets the selected country preference in the local storage
  // and updates the state with the selected country preference value
  // if the usecase call is successful otherwise sets the state with null
  Future<void> _onSetCountryPreference(
    SetCountryPreference event,
    Emitter<CountryState> emit,
  ) async {
    final response =
        await setSelectedCountryUsecase.call(event.selectedCountry);
    response.fold(
      (l) => emit(state.copyWith(country: null)),
      (r) => emit(state.copyWith(country: event.selectedCountry)),
    );
  }
}
