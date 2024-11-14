

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/flash_sale.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class FlashSaleRepository {
  Future<Either<AppException, List<FlashSale>>> getFlashSales(String? selectedCountry);
}