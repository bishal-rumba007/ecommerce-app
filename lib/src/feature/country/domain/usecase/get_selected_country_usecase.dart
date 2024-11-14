

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/country/domain/repositories/country_preference_repository.dart';
import 'package:ecommerce_app/src/shared/enums/country.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetSelectedCountryUsecase extends Usecase<Country?>{
  final CountryPreferenceRepository repository;

  GetSelectedCountryUsecase(this.repository);

  @override
  Future<Either<AppException, Country?>> call() async {
    return await repository.getSelectedCountry();
  }
}