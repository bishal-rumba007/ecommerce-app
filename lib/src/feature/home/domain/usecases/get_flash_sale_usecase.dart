import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/flash_sale.dart';
import 'package:ecommerce_app/src/feature/home/domain/repositories/flash_sale_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetFlashSaleUsecase extends UsecaseWithParam<List<FlashSale>, String?>{
  final FlashSaleRepository repository;

  GetFlashSaleUsecase(this.repository);

  @override
  Future<Either<AppException, List<FlashSale>>> call(String? params) async{
    return await repository.getFlashSales(params);
  }
  
}