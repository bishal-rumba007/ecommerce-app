import 'package:ecommerce_app/src/feature/home/domain/entities/flash_item.dart';
import 'package:ecommerce_app/src/feature/product/data/models/flash_sale_discount_model.dart';

class FlashItemModel extends FlashItem {
  const FlashItemModel({
    required super.id,
    required super.country,
    required super.productName,
    required super.productImage,
    super.previousPrice,
    required super.currentPrice,
    required super.productSlug,
    super.discount,
  });

  factory FlashItemModel.fromJson(Map<String, dynamic> json) {
    final stock = json['stock'];
    final product = stock[
        'product']; // <-- parsing product object from json because the json object has product info
    final flashSaleDiscount = stock['flashsale_discount'];

    return FlashItemModel(
      id: product['id'],
      country: stock['country']['name'],
      productName: product['product_name'],
      productImage: product['image'],
      previousPrice: stock['previous_price'],
      currentPrice: stock['current_price'],
      productSlug: product['prod_slug'],
      discount: flashSaleDiscount != null
          ? FlashSaleDiscountModel.fromJson(flashSaleDiscount)
          : null,
    );
  }

  @override
  List<Object?> get props => [
        id,
        country,
        productName,
        productImage,
        previousPrice,
        currentPrice,
        productSlug,
        discount,
      ];
}
