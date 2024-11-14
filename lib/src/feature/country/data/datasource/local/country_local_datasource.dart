import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/shared/data/local/storage_service.dart';
import 'package:ecommerce_app/src/shared/enums/country.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';
import 'package:ecommerce_app/src/shared/globals.dart';

abstract class CountryLocalDatasource {
  String get storageKey;
  Future<Either<AppException, Country?>> getSelectedCountry();
  Future<Either<AppException, String>> setCountryPreference(
      {required Country selectedCountry});
}

class CountryLocalDatasourceImpl extends CountryLocalDatasource {
  final StorageService storageService;

  CountryLocalDatasourceImpl(this.storageService);

  @override
  String get storageKey => countryPreferenceKey;

  @override
  Future<Either<AppException, Country?>> getSelectedCountry() async {
    try {
      final countryJson = await storageService.get(storageKey) as String?;
      if(countryJson == null) {
        return const Right(null);
      } else{
        final decodeString = jsonDecode(countryJson);
        return Right(Country.values.firstWhere((element) => element.name == decodeString));
      }
    } catch (e) {
      return Left(
        AppException(
          message: "Error getting country preference",
          statusCode: 1,
          identifier: "${e.toString()}\nCountryLocalDatasourceImpl.getSelectedCountry",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, String>> setCountryPreference({
    required Country selectedCountry,
  }) async {
    try {
      final countryJson = jsonEncode(selectedCountry.name);
      final result = await storageService.set(storageKey, countryJson);
      if(result) {
        return const Right("Country preference set successfully");
      } else{
        return Left(
          AppException(
            message: "Error while setting country",
            statusCode: 1,
            identifier: 'At CountryLocalDatasourceImpl.setCountryPreference',
          ),
        );
      }
    } catch (e) {
      return Left(
        AppException(
          message: "Error setting country preference",
          statusCode: 1,
          identifier: "${e.toString()}\nCountryLocalDatasourceImpl.setCountryPreference",
        ),
      );
    }
  }
}
