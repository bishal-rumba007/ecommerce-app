import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/infinite_scroll_loading_indicator.dart';
import 'package:ecommerce_app/src/feature/search/presentation/bloc/search_product_bloc.dart';
import 'package:ecommerce_app/src/feature/search/presentation/cubit/search_history_cubit.dart';
import 'package:ecommerce_app/src/feature/search/presentation/widgets/product_search_result_card.dart';
import 'package:ecommerce_app/src/feature/search/presentation/widgets/search_history_widget.dart';
import 'package:ecommerce_app/src/feature/search/presentation/widgets/search_loading_shimmer.dart';

class SearchView extends StatefulWidget {
  final TextEditingController searchController;
  final Function(String) triggerSearch;
  final String? selectedCountry;
  const SearchView(
      {super.key,
      required this.searchController,
      required this.triggerSearch,
      this.selectedCountry});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<SearchProductBloc, SearchProductState>(
      listener: (context, state) {
        if (state.status == SearchProductStatus.success) {
          context.read<SearchHistoryCubit>().getSearchHistory();
        }
      },
      builder: (context, state) {
        switch (state.status) {
          case SearchProductStatus.loading:
            return const SearchLoadingShimmer();
          case SearchProductStatus.failure:
            return Center(
              child: Text(
                state.message!,
                textAlign: TextAlign.center,
              ),
            );
          case SearchProductStatus.initial:
            return SearchHistoryWidget(
              triggerSearchJobEvent: widget.triggerSearch,
            );
          case SearchProductStatus.success:
            final productList = state.products;
            return widget.searchController.text.isEmpty
                ? SearchHistoryWidget(
                    triggerSearchJobEvent: widget.triggerSearch,
                  )
                : productList.isEmpty
                    ? Center(
                        child: Text(
                          "No results found",
                          style: theme.textTheme.bodyMedium,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Search Results",
                            style: theme.textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                              padding: const EdgeInsets.all(0),
                              itemCount: state.hasReachedMax
                                  ? state.products.length
                                  : state.products.length + 1,
                              itemBuilder: (context, index) {
                                return index >= state.products.length
                                    ? const InfiniteScrollLoadingIndicator()
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4.0),
                                        child: ProductSearchResultCard(
                                          product: productList[index],
                                        ),
                                      );
                              },
                              controller: _scrollController,
                            ),
                          ),
                        ],
                      );
        }
      },
    );
  }

  void _onScroll() {
    if (_isBottom && widget.searchController.text.isNotEmpty) {
      context.read<SearchProductBloc>().add(
          SearchProductEvent.loadedMoreProducts(
              widget.searchController.text, widget.selectedCountry));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
}
