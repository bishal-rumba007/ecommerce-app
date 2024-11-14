import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list_item.dart';
import 'package:ecommerce_app/src/feature/wishlist/presentation/bloc/wish_list_bloc.dart';

class WishListCard extends StatelessWidget {
  const WishListCard({
    super.key,
    required this.wishListItem,
    required this.wishList,
  });
  final WishListItem wishListItem;
  final WishList wishList;

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    final flashSaleDiscount = wishListItem.flashSaleDiscount;
    final discount =
        flashSaleDiscount != null ? flashSaleDiscount.discount?.floor() : 0;
    final discountType =
        flashSaleDiscount?.discountType == "percentage" ? "%" : "";
    final discountedAmount = flashSaleDiscount?.discountedAmount;
    final currentPrice = flashSaleDiscount != null
        ? discountedAmount
        : wishListItem.currentPrice;
    final previousPrice = flashSaleDiscount != null
        ? wishListItem.currentPrice
        : wishListItem.previousPrice;
    return Card(
      key: ValueKey(wishListItem.id),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: isTablet ? 16 / 10 : 16 / 14,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      child: CacheImageExtension(
                          imageUrl: wishListItem.productImage)),
                ),
                Visibility(
                  visible: wishListItem.flashSaleDiscount != null,
                  child: Positioned(
                    bottom: 5.74,
                    left: 5.74,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColor.containerRed,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "$discount$discountType Off",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontSize: 7,
                                    color: AppColor.white,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 6,
                  right: 6,
                  child: GestureDetector(
                    onTap: () {
                      showDeleteModal(context);
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white.withOpacity(0.8),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.close,
                          size: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wishListItem.productName,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text:
                            "${getCurrency(wishListItem.countryName)} $currentPrice  ",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo,
                                ),
                      ),
                      TextSpan(
                        text:
                            "${getCurrency(wishListItem.countryName)}$previousPrice",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColor.greyMedium,
                                  fontSize: 10,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColor.greyMedium,
                                ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 33,
              width: double.infinity,
              child: BuildOutlinedButton(
                onPressed: () {
                  context.push("/review");
                },
                buttonStyle: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  side: const BorderSide(
                    width: 1,
                    color: AppColor.primary,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                buttonWidget: const Text("Add a review"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showDeleteModal(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(42),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(40),
          height: 228,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Are you sure you want remove this product?",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: BuildOutlinedButton(
                      onPressed: () {
                        context.pop();
                      },
                      buttonWidget: const Text("Cancel"),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: BuildButton(
                        onPressed: () {
                          if (wishList.wishListItems.length == 1) {
                            context.read<WishListBloc>().add(
                                  WishListEvent.clearedWishList(
                                    wishList.wishListId,
                                  ),
                                );
                            Navigator.pop(context);
                          } else {
                            context.read<WishListBloc>().add(
                                  WishListEvent.deletedWishListItem(
                                    wishList.wishListId,
                                    wishListItem.id,
                                  ),
                                );
                            Navigator.pop(context);
                          }
                        },
                        buttonWidget: const Text("Yes, Remove"),
                        buttonStyle: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.red,
                        )),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
