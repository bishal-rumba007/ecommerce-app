import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/banners.dart';
import 'package:ecommerce_app/src/feature/home/domain/repositories/slider_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetBannerUsecase extends Usecase<List<Banners>>{
  final SliderRepository sliderRepository;

  GetBannerUsecase(this.sliderRepository);

  @override
  Future<Either<AppException, List<Banners>>> call() async {
    return await sliderRepository.getBanners();
  }
}