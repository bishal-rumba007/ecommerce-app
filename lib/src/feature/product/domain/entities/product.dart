import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/flash_sale_discount.dart';

class Product extends Equatable {
  final String id;
  final String categoryName;
  final String productName;
  final String productImage;
  final String country;
  final String? previousPrice;
  final String currentPrice;
  final String productSlug;
  final FlashSaleDiscount? discount;

  const Product({
    required this.id,
    required this.categoryName,
    required this.productName,
    required this.productImage,
    required this.country,
    this.previousPrice,
    required this.currentPrice,
    required this.productSlug,
    this.discount,
  });

  @override
  List<Object?> get props => [
        id,
        categoryName,
        productName,
        productImage,
        country,
        previousPrice,
        currentPrice,
        productSlug,
        discount,
      ];
}