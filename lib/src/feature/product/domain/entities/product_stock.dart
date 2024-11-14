


import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/flash_sale_discount.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_attribute.dart';

class ProductStock extends Equatable{

  final String id;
  final int quantity;
  final String? previousPrice;
  final String currentPrice;
  final String? specification;
  final String? thumbnailImage;
  final String countryId;
  final String countryName;
  final List<ProductAttribute> attribute;
  final FlashSaleDiscount? flashSaleDiscount;

  const ProductStock({
    required this.id,
    required this.quantity,
    this.previousPrice,
    required this.currentPrice,
    this.specification,
    this.thumbnailImage,
    required this.countryId,
    required this.countryName,
    required this.attribute,
    this.flashSaleDiscount,
  });

    // Copy constructor
  ProductStock.copy(ProductStock stock)
      : id = stock.id,
        quantity = stock.quantity,
        previousPrice = stock.previousPrice,
        currentPrice = stock.currentPrice,
        specification = stock.specification,
        thumbnailImage = stock.thumbnailImage,
        countryId = stock.countryId,
        countryName = stock.countryName,
        attribute = List.from(stock.attribute.map((attr) => ProductAttribute.copy(attr))),
        flashSaleDiscount = stock.flashSaleDiscount != null ? FlashSaleDiscount.copy(stock.flashSaleDiscount!) : null;

  @override
  List<Object?> get props => [
    id,
    quantity,
    previousPrice,
    currentPrice,
    specification,
    thumbnailImage,
    countryId,
    countryName,
    attribute,
    flashSaleDiscount,
  ];

}