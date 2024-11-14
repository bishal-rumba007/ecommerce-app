import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/utils/responsive.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/product_shimmer.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_card.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({super.key});

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  String? country;
  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return BlocListener<CountryBloc, CountryState>(
      listenWhen: (previous, current) {
        return previous.country != current.country;
      },
      listener: (context, state) {
        if (country != state.country?.name) {
          setState(() {
            country = state.country?.name;
          });
          context
              .read<ProductBloc>()
              .add(ProductEvent.fetchedProducts(country));
        }
      },
      child: BlocBuilder<CountryBloc, CountryState>(
        builder: (context, state) {
          country = state.country?.name;
          return BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              switch (state.status) {
                case ProductStateStatus.initial:
                  context
                      .read<ProductBloc>()
                      .add(ProductEvent.fetchedProducts(country));
                  return buildLoading(isTablet);
                case ProductStateStatus.loading:
                  return buildLoading(isTablet);
                case ProductStateStatus.loaded:
                  final products = state.products;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 19.5),
                        child: Text(
                          'Popular Products',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: products.asMap().entries.map((entry) {
                            int index = entry.key;
                            final product = entry.value;
                            return Row(
                              children: [
                                Padding(
                                  padding: index == 0
                                      ? const EdgeInsets.only(
                                          left: 16, right: 20)
                                      : const EdgeInsets.only(right: 20),
                                  child: SizedBox(
                                    width: isTablet
                                        ? (MediaQuery.of(context).size.width -
                                                68) /
                                            3.2
                                        : (MediaQuery.of(context).size.width -
                                                48) /
                                            2.1,
                                    child: ProductCard(
                                      index: index,
                                      product: product,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  );
                case ProductStateStatus.error:
                  return Center(
                    child: Text("Failed to load products"),
                  );
              }
            },
          );
        },
      ),
    );
  }

  Widget buildLoading(bool isTablet) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(3, (index) {
          return Padding(
            padding: index == 0
                ? const EdgeInsets.only(left: 16, right: 20)
                : const EdgeInsets.only(right: 20),
            child: SizedBox(
              width: isTablet
                  ? (MediaQuery.of(context).size.width - 68) / 3.2
                  : (MediaQuery.of(context).size.width - 48) / 2.1,
              child: ProductCardShimmer(),
            ),
          );
        }),
      ),
    );
  }
}
