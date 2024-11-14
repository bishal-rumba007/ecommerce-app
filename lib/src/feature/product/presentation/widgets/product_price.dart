import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/product/presentation/cubit/product_stock_cubit.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductStockCubit, ProductStockState>(
      builder: (context, state) {
        if(state.selectedProductStock == null) {
          return Container();
        }
    final selectedProductStock = state.selectedProductStock!;
    final flashSaleDiscount = selectedProductStock.flashSaleDiscount;
    final discount = flashSaleDiscount != null ? flashSaleDiscount.discount?.floor() : 0;
    final discountType = flashSaleDiscount?.discountType == "percentage" ? "%" : "";
    final discountedAmount = flashSaleDiscount?.discountedAmount;
    final currentPrice = flashSaleDiscount != null
        ? discountedAmount
        : selectedProductStock.currentPrice;
    final previousPrice = flashSaleDiscount != null
        ? selectedProductStock.currentPrice
        : selectedProductStock.previousPrice;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text:
                        "${getCurrency(selectedProductStock.countryName)} $currentPrice  ",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                  ),
                  TextSpan(
                    text:
                        "${getCurrency(selectedProductStock.countryName)} $previousPrice",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: AppColor.greyMedium,
                          fontSize: 10,
                          decoration: TextDecoration.lineThrough,
                          decorationColor:
                              Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                ]),
              ),
              SizedBox(
                width: 10,
              ),
              if (flashSaleDiscount != null)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColor.containerRed,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "$discount$discountType off",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 8,
                            color: AppColor.white,
                          ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
