import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/category_wise_product_view.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

class CategoryProductScreen extends StatefulWidget {
  const CategoryProductScreen({super.key, required this.category});

  final Category category;

  @override
  State<CategoryProductScreen> createState() => _CategoryProductScreenState();
}

class _CategoryProductScreenState extends State<CategoryProductScreen> {
  String? selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category.name,
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
        ],
      ),
      body: BlocBuilder<CountryBloc, CountryState>(
        builder: (context, state) {
          selectedCountry = state.country?.name;
          return BlocProvider(
            create: (_) => sl<ProductBloc>()
              ..add(
                ProductEvent.fetchedCategoryProductList(
                    widget.category.slug, selectedCountry),
              ),
            child: CategoryWiseProductView(categorySlug: widget.category.slug, selectedCountry: selectedCountry),
          );
        },
      ),
    );
  }
}
