import 'package:equatable/equatable.dart';

class FlashSaleDiscount extends Equatable {
  final double? discount;
  final String discountType;
  final double discountedAmount;
  final double originalAmount;

  const FlashSaleDiscount({
    this.discount,
    required this.discountType,
    required this.discountedAmount,
    required this.originalAmount,
  });

  // Copy constructor
  FlashSaleDiscount.copy(FlashSaleDiscount discount)
      : discount = discount.discount,
        discountType = discount.discountType,
        discountedAmount = discount.discountedAmount,
        originalAmount = discount.originalAmount;

  @override
  List<Object?> get props => [discount, discountType, discountedAmount, originalAmount];
}
