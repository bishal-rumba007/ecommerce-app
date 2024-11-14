import 'package:ecommerce_app/src/feature/product/domain/entities/flash_sale_discount.dart';

class FlashSaleDiscountModel extends FlashSaleDiscount {
  const FlashSaleDiscountModel({
    required super.discount,
    required super.discountType,
    required super.discountedAmount,
    required super.originalAmount,
  });

  factory FlashSaleDiscountModel.fromJson(Map<String, dynamic> json) {
    return FlashSaleDiscountModel(
      discount: json['discount'],
      discountType: json['discount_type'],
      discountedAmount: json['discounted_price'],
      originalAmount: json['original_price'],
    );
  }

  @override
  List<Object?> get props => [discount, discountType, discountedAmount, originalAmount];
}
