

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/shared/enums/country.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class CountryPreferenceRepository {
  Future<Either<AppException, Country?>> getSelectedCountry();
  Future<Either<AppException, String>> setCountryPreference({required Country selectedCountry});
}