

import 'package:ecommerce_app/src/feature/product/data/models/flash_sale_discount_model.dart';
import 'package:ecommerce_app/src/feature/product/data/models/product_attribute_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';

class ProductStockModel extends ProductStock{

  const ProductStockModel({
    required super.id,
    required super.quantity,
    super.previousPrice,
    required super.currentPrice,
    super.specification,
    super.thumbnailImage,
    required super.countryId,
    required super.countryName,
    required super.attribute,
    super.flashSaleDiscount,
  });

  factory ProductStockModel.fromJson(Map<String, dynamic> json){
    return ProductStockModel(
      id: json['id'],
      quantity: json['quantity'],
      previousPrice: json['previous_price'],
      currentPrice: json['current_price'],
      specification: json['description'],
      thumbnailImage: json['thumbnailImage'],
      countryId: json['country']['id'],
      countryName: json['country']['name'],
      attribute: (json['attributes'] as List).map((e) => ProductAttributeModel.fromJson(e)).toList(),
      flashSaleDiscount: json['flashsale_discount'] != null ? FlashSaleDiscountModel.fromJson(json['flashsale_discount']) : null,
    );
  }
}