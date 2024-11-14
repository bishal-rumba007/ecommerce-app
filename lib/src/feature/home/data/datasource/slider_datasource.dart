import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/home/data/models/banner_model.dart';
import 'package:ecommerce_app/src/feature/home/data/models/slider_model.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/banners.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class SliderDatasource {
  Future<Either<AppException, List<SliderModel>>> getSliders();
  Future<Either<AppException, List<Banners>>> getTopBanners();
  Future<Either<AppException, List<Banners>>> getBottomBanners();
}

class SliderDatasourceImpl implements SliderDatasource {
  final NetworkService networkService;

  SliderDatasourceImpl({required this.networkService});

  @override
  Future<Either<AppException, List<SliderModel>>> getSliders() async {
    try {
      final response = await networkService.get(AppConfig.getSliders);
      return response.fold(
        (exception) => Left(exception),
        (result) {
          final sliders = (result.data as List<dynamic>)
              .map((e) => SliderModel.fromJson(e))
              .toList();
          return Right(sliders);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Something went wrong while fetching sliders",
          statusCode: 1,
          identifier: "${e.toString()}\nSliderDatasourceImpl.getSliders",
        ),
      );
    }
  }
  
  @override
  Future<Either<AppException, List<Banners>>> getTopBanners() async {
    try {
      final response = await networkService.get(AppConfig.topBanner);

      await Future.delayed(const Duration(seconds: 3));

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final banners = (result.data as List<dynamic>)
              .map((e) => BannerModel.fromJson(e))
              .toList();
          return Right(banners);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Something went wrong while fetching banners",
          statusCode: 1,
          identifier: "${e.toString()}\nSliderDatasourceImpl.getTopBanners",
        ),
      );
    }
  }
  
  @override
  Future<Either<AppException, List<Banners>>> getBottomBanners() async {
       try {
      final response = await networkService.get(AppConfig.bottomBanner);

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final banners = (result.data as List<dynamic>)
              .map((e) => BannerModel.fromJson(e))
              .toList();
          return Right(banners);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Something went wrong while fetching banners",
          statusCode: 1,
          identifier: "${e.toString()}\nSliderDatasourceImpl.getBottomBanners",
        ),
      );
    }
  }
}
