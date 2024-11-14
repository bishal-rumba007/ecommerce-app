import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/sub_category.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_grid_view.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

class ProductViewScreen extends StatefulWidget {
  final SubCategory subCategory;
  const ProductViewScreen({super.key, required this.subCategory});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        selectedCountry = state.country?.name;
        return BlocProvider(
          create: (_) => sl<ProductBloc>()
              ..add(ProductEvent.fetchedSubCategoryProductList(
                  widget.subCategory.slug, selectedCountry, null)),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                widget.subCategory.name,
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    context.push('/search-product');
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/search.svg",
                    fit: BoxFit.scaleDown,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.push(
                      '/filter',
                      extra: {
                        'subCategory': widget.subCategory.slug,
                        'selectedCountry': selectedCountry,
                      },
                    );
                  },
                  icon: Icon(Icons.tune),
                ),
              ],
            ),
            body: ProductGridView(
              subCategorySlug: widget.subCategory.slug,
              selectedCountry: selectedCountry,
            ),
          ),
        );
      },
    );
  }
}
