

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/banners.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/sliders.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class SliderRepository {
  Future<Either<AppException, List<Sliders>>> getSliders();
  Future<Either<AppException, List<Banners>>> getBanners();
  Future<Either<AppException, List<Banners>>> getBottomBanners();
}