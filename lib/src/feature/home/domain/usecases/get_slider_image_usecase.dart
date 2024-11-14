
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/sliders.dart';
import 'package:ecommerce_app/src/feature/home/domain/repositories/slider_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetSliderImageUsecase extends Usecase<List<Sliders>>{
  final SliderRepository sliderRepository;

  GetSliderImageUsecase(this.sliderRepository);

  @override
  Future<Either<AppException, List<Sliders>>> call() async {
    return await sliderRepository.getSliders();
  }
  
}