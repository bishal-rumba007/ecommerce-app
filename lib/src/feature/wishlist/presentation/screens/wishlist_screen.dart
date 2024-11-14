import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/feature/wishlist/presentation/bloc/wish_list_bloc.dart';
import 'package:ecommerce_app/src/feature/wishlist/presentation/widgets/wishlist_card.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WishListBloc>(
      create: (_) =>
          sl<WishListBloc>()..add(const WishListEvent.fetchedWishList("")),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Wishlist'),
        ),
        body: BlocListener<WishListBloc, WishListState>(
          listenWhen: (previous, current) {
            return previous != current;
          },
          listener: (context, state) {
            state.maybeWhen(
              loading: () {
                buildLoadingDialog(context, "Processing...");
              },
              loaded: (wishList) {
                context.pop();
              },
              error: (appException) {
                SnackBars.showErrorSnackBar(appException.message);
              },
              orElse: () {},
            );
          },
          child: BlocBuilder<WishListBloc, WishListState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (wishList) {
                  if (wishList == null || wishList.wishListItems.isEmpty) {
                    return const Center(child: Text('No items in wishlist'));
                  }
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RefreshIndicator.adaptive(
                      onRefresh: () {
                        return Future.delayed(Duration(milliseconds: 1600), () {
                          if (!context.mounted) return;
                          context
                              .read<WishListBloc>()
                              .add(const WishListEvent.fetchedWishList(""));
                        });
                      },
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 14,
                          childAspectRatio: 0.59,
                        ),
                        itemCount: wishList.wishListItems.length,
                        itemBuilder: (context, index) {
                          return WishListCard(
                            key: ValueKey(
                              wishList.wishListItems[index].id,
                            ),
                            wishListItem: wishList.wishListItems[index],
                            wishList: wishList,
                          );
                        },
                      ),
                    ),
                  );
                },
                error: (appException) {
                  return Center(
                    child: Text(appException.message),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
