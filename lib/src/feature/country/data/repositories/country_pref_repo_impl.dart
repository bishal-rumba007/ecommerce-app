import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/country/data/datasource/local/country_local_datasource.dart';
import 'package:ecommerce_app/src/feature/country/domain/repositories/country_preference_repository.dart';
import 'package:ecommerce_app/src/shared/enums/country.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class CountryPreferenceRepositoryImpl extends CountryPreferenceRepository {
  final CountryLocalDatasource localDatasource;

  CountryPreferenceRepositoryImpl(this.localDatasource);

  @override
  Future<Either<AppException, Country?>> getSelectedCountry() async {
    return await localDatasource.getSelectedCountry();
  }

  @override
  Future<Either<AppException, String>> setCountryPreference(
      {required Country selectedCountry}) async {
    return await localDatasource.setCountryPreference(
        selectedCountry: selectedCountry);
  }
}
