import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/home/data/datasource/flash_sale_datasource.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/flash_sale.dart';
import 'package:ecommerce_app/src/feature/home/domain/repositories/flash_sale_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class FlashSaleRepositoryImpl extends FlashSaleRepository {
  final FlashSaleDatasource datasource;

  FlashSaleRepositoryImpl(this.datasource);

  @override
  Future<Either<AppException, List<FlashSale>>> getFlashSales(String? selectedCountry) async {
    return await datasource.getFlashSales(selectedCountry);
  }
}
