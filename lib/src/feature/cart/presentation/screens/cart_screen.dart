import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/widgets/cart_item_card.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/widgets/cart_not_found.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/widgets/checkout_button.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, this.selectedCountry});
  final String? selectedCountry;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String? country;
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        country = state.country?.name;
        return BlocListener<CartBloc, CartState>(
          listenWhen: (previous, current) {
            return previous.status != current.status;
          },
          listener: (context, state) {
            if (state.status == CartStatus.loading) {
              buildLoadingDialog(context, "Processing...");
            }
            if (state.status == CartStatus.loaded) {
              context.pop();
            }
            if (state.status == CartStatus.error) {
              context.pop();
              SnackBars.showErrorSnackBar(state.message!);
            }
          },
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: 90.0,
                    toolbarHeight: 76.0,
                    flexibleSpace: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BuildTextFormField(
                            controller: searchController,
                            prefixIconWidget: SvgPicture.asset(
                              "assets/icons/search.svg",
                              fit: BoxFit.scaleDown,
                            ),
                            hintText: "Search...",
                            fillColor: Colors.white,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: BlocBuilder<CartBloc, CartState>(
                buildWhen: (previous, current) {
                  return previous.cart != current.cart;
                },
                builder: (context, state) {
                  switch (state.status) {
                    case CartStatus.initial:
                      context.read<CartBloc>().add(CartEvent.cartFetched(
                          widget.selectedCountry ?? country));
                      return const Center(child: Text("Cart is empty"));
                    case CartStatus.loading:
                      return const Center(child: CircularProgressIndicator());
                    case CartStatus.loaded:
                      final cart = state.cart;

                      if (cart == null || cart.cartItems.isEmpty) {
                        return CartEmpty(
                          message:
                              "It seems like you haven't added anything to cart.",
                        );
                      }
                      return Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Cart Items",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  child: RefreshIndicator(
                                    onRefresh: () {
                                      return Future.delayed(
                                        Duration(seconds: 1),
                                        () {
                                          if(!context.mounted) return;
                                          context.read<CartBloc>().add(
                                              CartEvent.cartFetched(
                                                  widget.selectedCountry ??
                                                      country));
                                        },
                                      );
                                    },
                                    child: ListView.separated(
                                      padding: EdgeInsets.only(bottom: 120),
                                      itemCount: cart.cartItems.length,
                                      itemBuilder: (context, index) {
                                        final cartItem = cart.cartItems[index];
                                        return CartItemCard(
                                          cart: cart,
                                          cartItem: cartItem,
                                          key: ValueKey(cartItem.cartId),
                                        );
                                      },
                                      separatorBuilder: (_, __) => SizedBox(
                                        height: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 120,
                            right: 20,
                            left: 20,
                            child: CheckoutButton(country: country, cart: cart),
                          ),
                        ],
                      );
                    case CartStatus.error:
                      if (state.appException?.statusCode == 404) {
                        return CartEmpty(
                          message: state.message,
                        );
                      }
                      return Center(child: Text(state.message!));
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

