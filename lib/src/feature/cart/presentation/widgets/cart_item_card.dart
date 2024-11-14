import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/core/utils/currency_util.dart';
import 'package:ecommerce_app/src/core/utils/responsive.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_items.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_request.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/bloc/cart_bloc/cart_bloc.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({
    super.key,
    required this.cartItem,
    required this.cart, this.showCounter, this.showRemove,
  });

  final CartItem cartItem;
  final Cart cart;
  final bool? showCounter;
  final bool? showRemove;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int quantity = 1;
  Timer? _debounce;

  void _decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
      _debounceEvent();
    }
  }

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
    _debounceEvent();
  }

  void _debounceEvent() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context.read<CartBloc>().add(
            CartEvent.cartUpdated(
              widget.cart.cartId,
              [
                CartRequest(
                  productStockId: widget.cartItem.cartStock.id,
                  quantity: quantity,
                )
              ],
            ),
          );
    });
  }

  @override
  void initState() {
    super.initState();
    quantity = widget.cartItem.quantity;
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    final flashSale = widget.cartItem.cartStock.flashSaleDiscount;
    final discount = flashSale?.discount?.floor();
    final discountType = flashSale?.discountType == "percentage" ? "%" : "";
        final discountedAmount = flashSale?.discountedAmount;
    final currentPrice = flashSale != null
        ? discountedAmount
        : widget.cartItem.cartStock.currentPrice;
    final previousPrice = flashSale != null
        ? widget.cartItem.cartStock.currentPrice
        : widget.cartItem.cartStock.previousPrice;
    return AspectRatio(
      aspectRatio: isTablet ? 16 / 5 : 16 / 6.2,
      child: Card(
        key: ValueKey(widget.cartItem.cartId), // Use a key to ensure correct identification
        color: Colors.grey.shade50,
        elevation: 2,
        shadowColor: Colors.grey.shade100.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      children: [
                        CacheImageExtension(
                          imageUrl: widget.cartItem.cartStock.productImage,
                        ),
                        if (flashSale != null)
                          Positioned(
                            top: 5.74,
                            right: 5.74,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: AppColor.containerRed,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "$discount$discountType Off",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        fontSize: 7,
                                        color: AppColor.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                widget.cartItem.cartStock.productName,
                                style: Theme.of(context).textTheme.labelLarge,
                                maxLines: 2,
                                overflow: TextOverflow.fade,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Visibility(
                          visible: widget.showRemove ?? true,
                          child: IconButton(
                            onPressed: () {
                              _openBottomSheet(context);
                            },
                            iconSize: 20,
                            icon: const Icon(
                              CupertinoIcons.trash,
                              color: AppColor.containerRed,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          widget.cartItem.cartStock.attributes
                              .map((attribute) =>
                                  "${attribute.name}: ${attribute.value}")
                              .join(" | "),
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${getCurrency(widget.cartItem.cartStock.countryName)} $currentPrice",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.primary,
                                    ),
                              ),
                              Text(
                                "${getCurrency(widget.cartItem.cartStock.countryName)} $previousPrice}",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: AppColor.greyMedium,
                                      fontSize: 10,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: AppColor.greyMedium,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Visibility(
                          visible: widget.showCounter ?? true,
                          child: _quantityContainer(context)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _quantityContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              _decreaseQuantity();
            },
            child: const Icon(
              Icons.remove,
              size: 20,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "$quantity",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {
              _increaseQuantity();
            },
            child: const Icon(
              Icons.add,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.36,
      ),
      builder: (context) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.36,
          ),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(42),
            ),
          ),
          child: Column(
            children: [
              Text(
                "Remove From Cart?",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
              SizedBox(
                height: 8,
              ),
              CartItemCard(
                cart: widget.cart,
                cartItem: widget.cartItem,
                showCounter: false,
                showRemove: false,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: BuildOutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      buttonWidget: const Text("Cancel"),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: BuildButton(
                      onPressed: () {
                        if(widget.cart.cartItems.length ==1 ){
                          context.read<CartBloc>().add(
                              CartEvent.cartCleared(
                                widget.cart.cartId,
                              ),
                            );
                        Navigator.pop(context);
                        }else{
                          context.read<CartBloc>().add(
                              CartEvent.cartRemoved(
                                widget.cart.cartId,
                                widget.cartItem.cartId,
                              ),
                            );
                        Navigator.pop(context);
                        }
                      },
                      buttonWidget: const Text("Yes, Remove"),
                    ),
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
