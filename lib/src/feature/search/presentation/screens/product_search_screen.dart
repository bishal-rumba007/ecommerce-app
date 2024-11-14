import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';
import 'package:ecommerce_app/src/feature/search/presentation/bloc/search_product_bloc.dart';
import 'package:ecommerce_app/src/feature/search/presentation/cubit/search_history_cubit.dart';
import 'package:ecommerce_app/src/feature/search/presentation/widgets/search_view.dart';

class ProductSearchScreen extends StatefulWidget {
  const ProductSearchScreen({super.key});

  @override
  State<ProductSearchScreen> createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  TextEditingController searchController = TextEditingController();
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: BlocBuilder<CountryBloc, CountryState>(
        builder: (context, state) {
          selectedCountry = state.country?.name;
          return NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  title: Text("Search"),
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  titleTextStyle: Theme.of(context).textTheme.bodyLarge,
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: BuildTextFormField(
                      autoFocus: true,
                      controller: searchController,
                      prefixIconWidget: SvgPicture.asset(
                        "assets/icons/search.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: "Search with product name, keyword, etc...",
                      onChanged: (value) {
                        setState(() {});
                        if (value.isEmpty) return;
                        context.read<SearchProductBloc>().add(
                              SearchProductEvent.searchedProducts(
                                value,
                                selectedCountry,
                              ),
                            );
                      },
                      onSubmit: (value) {
                        if (value.isEmpty) return;
                        context
                            .read<SearchHistoryCubit>()
                            .saveSearchQuery(value);
                        FocusScope.of(context).unfocus();
                      },
                      suffixIcon: searchController.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                context
                                    .read<SearchProductBloc>()
                                    .add(SearchProductEvent.clearedSearch());
                                searchController.clear();
                                setState(() {});
                              },
                              icon: const Icon(
                                  CupertinoIcons.clear_circled_solid),
                            )
                          : null,
                    ),
                  ),
                ),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: SearchView(
                selectedCountry: selectedCountry,
                searchController: searchController,
                triggerSearch: (String query) {
                  setState(() {});
                  searchController.text = query;
                  context.read<SearchProductBloc>().add(
                      SearchProductEvent.searchedProducts(
                          query, selectedCountry));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
