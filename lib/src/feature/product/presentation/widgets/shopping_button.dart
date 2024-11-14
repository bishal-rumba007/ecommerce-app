import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_request.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/bloc/check_out_bloc.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';

/// The Bottom Shopping Button which is shared in multiple screens
class ShoppingButton extends StatelessWidget {
  const ShoppingButton({
    super.key,
    required this.quantity,
    required this.productStock,
  });
  final int quantity;
  final ProductStock productStock;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CartBloc, CartState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            if (state.status == CartStatus.loading) {
              buildLoadingDialog(context, "Adding to Cart...");
            }
            if (state.status == CartStatus.loaded) {
              context.pop();
              context.go("/cart", extra: productStock.countryName);
            }
            if (state.status == CartStatus.error) {
              context.pop();
              SnackBars.showErrorSnackBar(state.message!);
            }
          },
        ),
        BlocListener<CheckOutBloc, CheckOutState>(
          listenWhen: (previous, current) {
            return previous != current;
          },
          listener: (context, state) {
            state.maybeWhen(
              loading: () {
                buildLoadingDialog(context, "Checking Out...");
              },
              loaded: (checkout) {
                context.pop();
                context.push("/checkout");
              },
              error: (message) {
                context.pop();
                SnackBars.showErrorSnackBar(message);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: const Color(0xFFE2E1FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: BuildButton(
                onPressed: () {
                  context.read<CartBloc>().add(
                        CartEvent.cartAdded(
                          productStock.countryId,
                          [
                            CartRequest(
                              productStockId: productStock.id,
                              quantity: quantity,
                            ),
                          ],
                        ),
                      );
                },
                buttonStyle: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(20)),
                  ),
                ),
                buttonWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/shopping-bag.svg"),
                    SizedBox(
                      width: 5,
                    ),
                    const Text("Add to cart")
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  final items = [
                    {
                      "productstock": productStock.id,
                      "quantity": quantity,
                    }
                  ];
                  context
                      .read<CheckOutBloc>()
                      .add(CheckOutEvent.checkedOut(items));
                },
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 56),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(20)),
                  ),
                ),
                child: const Text('Buy Now'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
