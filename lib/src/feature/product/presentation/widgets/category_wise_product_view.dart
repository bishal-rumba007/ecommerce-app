import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/utils/responsive.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/infinite_scroll_loading_indicator.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/product_shimmer.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_card.dart';

class CategoryWiseProductView extends StatefulWidget {
  const CategoryWiseProductView({super.key, required this.categorySlug, this.selectedCountry});

  final String categorySlug;
  final String? selectedCountry;

  @override
  State<CategoryWiseProductView> createState() =>
      _CategoryWiseProductViewState();
}

class _CategoryWiseProductViewState extends State<CategoryWiseProductView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        switch (state.status) {
          case ProductStateStatus.initial:
            context.read<ProductBloc>().add(
                ProductEvent.fetchedCategoryProductList(
                    widget.categorySlug, widget.selectedCountry));
            return ProductShimmer();
          case ProductStateStatus.loading:
            return ProductShimmer();
          case ProductStateStatus.loaded:
            final products = state.products;
            return products.isNotEmpty
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RefreshIndicator.adaptive(
                      displacement: 16,
                      edgeOffset: 0.5,
                      onRefresh: () {
                        context.read<ProductBloc>().add(
                            ProductEvent.refreshedCategoryProducts(
                                widget.categorySlug, widget.selectedCountry));
                        return Future.value();
                      },
                      child: GridView.builder(
                        padding: EdgeInsets.only(top: 10, bottom: 100),
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 17,
                          mainAxisSpacing: 10,
                          childAspectRatio: isTablet ? 1 : 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return index >= state.products.length
                              ? const InfiniteScrollLoadingIndicator()
                              : ProductCard(
                                  index: index,
                                  product: products[index],
                                );
                        },
                        itemCount: state.hasReachedMax
                            ? products.length
                            : state.products.length + 1,
                        controller: _scrollController,
                      ),
                    ),
                  )
                : Center(
                    child: Text("No products found"),
                  );
          case ProductStateStatus.error:
            return Center(
              child: Text("Failed to load products"),
            );
        }
      },
    );
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<ProductBloc>().add(
          ProductEvent.fetchedCategoryProductList(widget.categorySlug, widget.selectedCountry));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }
}
