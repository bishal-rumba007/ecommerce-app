import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/utils/responsive.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/infinite_scroll_loading_indicator.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/product_shimmer.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/bloc/filter_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_card.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({
    super.key,
    required this.subCategorySlug,
    this.selectedCountry,
  });
  final String subCategorySlug;
  final String? selectedCountry;

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  final ScrollController _scrollController = ScrollController();
  Map<String, dynamic>? filter;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);

    /// BlocListener listens to the FilterBloc state changes
    /// specifically to the isFilterApplied state change because
    /// when the user applies the filter, the isFilterApplied state is set to true
    /// and the selected filters are sent to the server to fetch the filtered products
    return BlocListener<FilterBloc, FilterState>(
      listener: (context, state) {
        if (state.isFilterApplied) {
          // setState(() {
          //   filter = state.selectedFilters;
          // });
          context.read<ProductBloc>().add(
                ProductEvent.fetchedSubCategoryProductList(
                  widget.subCategorySlug,
                  widget.selectedCountry,
                  state.selectedFilters,
                ),
              );
        }
      },

      /// ProductBloc is responsible for managing the state of the products fetched
      /// from the server. It fetches the products from the server and updates the state 
      /// based on the response from the server or any error that occurs
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          switch (state.status) {
            case ProductStateStatus.initial:
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
                          context
                              .read<ProductBloc>()
                              .add(ProductEvent.refreshedSubCategoryProducts(
                                widget.subCategorySlug,
                                widget.selectedCountry,
                              ));
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
                              ? state.products.length
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
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<ProductBloc>().add(
          ProductEvent.fetchedSubCategoryProductList(
              widget.subCategorySlug, widget.selectedCountry, filter));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.8);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }
}
