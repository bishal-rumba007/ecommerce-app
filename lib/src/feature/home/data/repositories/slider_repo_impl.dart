

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/home/data/datasource/slider_datasource.dart';
import 'package:ecommerce_app/src/feature/home/data/models/slider_model.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/banners.dart';
import 'package:ecommerce_app/src/feature/home/domain/repositories/slider_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class SliderRepositoryImpl implements SliderRepository {
  final SliderDatasource remoteDataSource;

  SliderRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppException, List<SliderModel>>> getSliders() async {
    return await remoteDataSource.getSliders();
  }

  @override
  Future<Either<AppException, List<Banners>>> getBanners() async {
    return await remoteDataSource.getTopBanners();
  }

  @override
  Future<Either<AppException, List<Banners>>> getBottomBanners() async {
    return await remoteDataSource.getBottomBanners();
  }
}