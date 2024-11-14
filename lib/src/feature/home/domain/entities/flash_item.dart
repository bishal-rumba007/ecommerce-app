import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/flash_sale_discount.dart';

class FlashItem extends Equatable{
  final String id;
  final String country;
  final String productName;
  final String productImage;
  final String? previousPrice;
  final String currentPrice;
  final String productSlug;
  final FlashSaleDiscount? discount;

  const FlashItem({
    required this.id,
    required this.country,
    required this.productName,
    required this.productImage,
    this.previousPrice,
    required this.currentPrice,
    required this.productSlug,
    this.discount,
  });

  @override
  List<Object?> get props => [id, country, productName, productImage, previousPrice, currentPrice, productSlug, discount,];
}