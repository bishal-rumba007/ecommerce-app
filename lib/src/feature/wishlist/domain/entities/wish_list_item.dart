import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/flash_sale_discount.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_attribute.dart';

class WishListItem extends Equatable {
  final String id;
  final String productName;
  final String productImage;
  final String productSlug;
  final String previousPrice;
  final String currentPrice;
  final String countryName;
  final String countryId;
  final List<ProductAttribute> attributes;
  final FlashSaleDiscount? flashSaleDiscount;

  const WishListItem({
    required this.id,
    required this.productName,
    required this.productImage,
    required this.productSlug,
    required this.previousPrice,
    required this.currentPrice,
    required this.countryName,
    required this.countryId,
    required this.attributes,
    this.flashSaleDiscount,
  });
  
  @override
  List<Object?> get props => [
        id,
        productName,
        productImage,
        productSlug,
        previousPrice,
        currentPrice,
        countryName,
        countryId,
        attributes,
        flashSaleDiscount,
      ];
}
