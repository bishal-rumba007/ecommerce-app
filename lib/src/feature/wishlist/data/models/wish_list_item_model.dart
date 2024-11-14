import 'package:ecommerce_app/src/feature/product/data/models/flash_sale_discount_model.dart';
import 'package:ecommerce_app/src/feature/product/data/models/product_attribute_model.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list_item.dart';

class WishListItemModel extends WishListItem {

  const WishListItemModel({
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

  factory WishListItemModel.fromJson(Map<String, dynamic> json) {
    final stock = json['productstock'];
    final product = stock['product'];
    return WishListItemModel(
      id: json['id'],
      productName: product['product_name'],
      productImage: product['image'],
      productSlug: product['prod_slug'],
      previousPrice: stock['previous_price'],
      currentPrice: stock['current_price'],
      countryName: stock['country']['name'],
      countryId: stock['country']['id'],
      attributes: (stock['attributes'] as List)
          .map((e) => ProductAttributeModel.fromJson(e))
          .toList(),
      flashSaleDiscount: json['flashSaleDiscount'] != null
          ? FlashSaleDiscountModel.fromJson(json['flashSaleDiscount'])
          : null,
    );
  }
}
