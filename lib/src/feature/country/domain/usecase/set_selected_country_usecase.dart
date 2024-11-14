import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/country/domain/repositories/country_preference_repository.dart';
import 'package:ecommerce_app/src/shared/enums/country.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class SetSelectedCountryUsecase extends UsecaseWithParam<String, Country> {
  final CountryPreferenceRepository repository;

  SetSelectedCountryUsecase(this.repository);

  @override
  Future<Either<AppException, String>> call(Country params) async {
    return await repository.setCountryPreference(selectedCountry: params);
  }
}
