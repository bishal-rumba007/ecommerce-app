import 'package:ecommerce_app/src/feature/product/data/models/flash_sale_discount_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';

class ProductModel extends Product {
  const ProductModel({
    required super.id,
    required super.categoryName,
    required super.productName,
    required super.productImage,
    required super.country,
    super.previousPrice,
    required super.currentPrice,
    required super.productSlug,
    super.discount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    final stock = (json['product_stock'] as List<dynamic>).first;
    return ProductModel(
      id: json['id'],
      categoryName: json['category_name'],
      productName: json['product_name'],
      productImage: json['image'],
      productSlug: json['prod_slug'],
      country: stock['country']["name"],
      previousPrice: stock['previous_price'],
      currentPrice: stock['current_price'],
      discount: stock['flashsale_discount'] != null
          ? FlashSaleDiscountModel.fromJson(stock['flashsale_discount'])
          : null,
    );
  }
}
