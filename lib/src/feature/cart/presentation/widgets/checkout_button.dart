import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/bloc/check_out_bloc.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
    required this.country,
    required this.cart,
  });

  final String? country;
  final Cart? cart;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckOutBloc, CheckOutState>(
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
            context.push("/checkout", extra: country);
          },
          error: (message) {
            context.pop();
            SnackBars.showErrorSnackBar(message);
          },
          orElse: () {},
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: const Color(0xFFE2E1FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Price",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),
                    Text(" ${getCurrency(country ?? cart!.cartItems.first.cartStock.countryName)} ${cart?.totalAmount}",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BuildButton(
                onPressed: () {
                  final cartItems = cart?.cartItems;
                  if(cartItems != null && cartItems.isNotEmpty){
                    final items = cartItems.map((e) => {
                      "productstock": e.cartStock.id,
                      "quantity": e.quantity,
                    }).toList();
                    context.read<CheckOutBloc>().add(CheckOutEvent.checkedOut(items));
                  }
                },
                buttonStyle: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(20)),
                  ),
                ),
                buttonWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Checkout",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
