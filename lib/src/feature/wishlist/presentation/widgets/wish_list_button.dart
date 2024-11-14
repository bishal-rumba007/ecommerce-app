import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/add_wish_list_usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/presentation/bloc/wish_list_bloc.dart';

class WishListButton extends StatelessWidget {
  const WishListButton({
    super.key,
    required this.productStock,
    required this.quantity,
  });

  final int quantity;
  final ProductStock productStock;
  @override
  Widget build(BuildContext context) {
    return BlocListener<WishListBloc, WishListState>(
      listenWhen: (previous, current) {
        return previous != current;
      },
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            buildLoadingDialog(context, "Adding to Wish List...");
          },
          loaded: (wishList) {
            context.pop();
            SnackBars.showSuccessSnackBar("Added to Wish List");
            context.push("/wishlist");
          },
          error: (exception) {
            context.pop();
            SnackBars.showErrorSnackBar(exception.message);
          },
          orElse: () {},
        );
      },
      child: IconButton(
        onPressed: () {
          final items = [
            {
              "productstock": productStock.id,
              "quantity": quantity,
            }
          ];
          context.read<WishListBloc>().add(
                WishListEvent.addedToWishList(
                  AddWishListParams(
                    countryId: productStock.countryId,
                    items: items,
                  ),
                ),
              );
        },
        style: IconButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        icon: const Icon(Icons.favorite_border),
      ),
    );
  }
}
