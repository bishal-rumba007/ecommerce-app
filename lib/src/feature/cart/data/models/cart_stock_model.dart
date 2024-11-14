import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_stock.dart';
import 'package:ecommerce_app/src/feature/product/data/models/flash_sale_discount_model.dart';
import 'package:ecommerce_app/src/feature/product/data/models/product_attribute_model.dart';

class CartStockModel extends CartStock{

  const CartStockModel({
    required super.id,
    required super.productName,
    required super.productImage,
    required super.productSlug,
    required super.previousPrice,
    required super.currentPrice,
    required super.countryName,
    required super.countryId,
    required super.attributes,
    super.flashSaleDiscount,
  });

  factory CartStockModel.fromJson(Map<String, dynamic> json) {
    final product = json['product'];
    return CartStockModel(
      id: json['id'],
      productName: product['product_name'],
      productImage: product['image'],
      productSlug: product['prod_slug'],
      previousPrice: json['previous_price'],
      currentPrice: json['current_price'],
      countryName: json['country']['name'],
      countryId: json['country']['id'],
      attributes: (json["attributes"] as List).map((attr) => ProductAttributeModel.fromJson(attr)).toList(),
      flashSaleDiscount: json['flashsale_discount'] != null ? FlashSaleDiscountModel.fromJson(json['flashsale_discount']) : null,
    );
  }
}