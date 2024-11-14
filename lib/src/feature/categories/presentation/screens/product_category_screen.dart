import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/bloc/category_bloc.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/cubit/selected_category_cubit.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/category_list_view.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/category_shimmer.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/sub_category_builder.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/slider/sliders_bloc.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/promo_slider.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({super.key});

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CategoryBloc>(),
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  context.push("/search-product");
                },
                borderRadius: BorderRadius.circular(16),
                splashColor: Theme.of(context).splashColor,
                child: Ink(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Theme.of(context).primaryColor.withOpacity(0.02),
                        offset: const Offset(1, 2),
                        blurRadius: 2.0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/search.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Search for products",
                        style: Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      context.read<CategoryBloc>().add(const FetchedCategory());
                      return const SizedBox.shrink();
                    },
                    loaded: (categories) {
                      if (categories.isEmpty) {
                        return const Center(
                          child: Text("No Categories Found"),
                        );
                      }
                      if (categories.isNotEmpty) {
                        context.read<SelectedCategoryCubit>().selectCategory(
                              categories.first,
                            );
                      }
                      return Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 1,
                              child: CategoryListView(
                                categories: categories,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Flexible(
                              flex: 2,
                              child: SizedBox(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BlocProvider(
                                        create: (context) => sl<SlidersBloc>(),
                                        child: PromoSlider(
                                          aspectRatio: 16 / 6,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SubCategoryBuilder(),
                                      const SizedBox(
                                        height: 80,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    loading: () {
                      return const Expanded(
                        child: CategoryShimmer(),
                      );
                    },
                    error: (exception) {
                      return Center(
                        child: Text(exception.toString()),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
