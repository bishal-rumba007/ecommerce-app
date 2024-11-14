import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_detail/product_detail_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/cubit/product_stock_cubit.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/attribute_builder.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/build_image_carousel.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/build_navigation_tile.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_detail_header.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_info_panel.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_price.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/rating_container.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/shopping_button.dart';
import 'package:ecommerce_app/src/feature/wishlist/presentation/widgets/wish_list_button.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen(
      {super.key, required this.productSlug, this.selectedCountry});
  final String productSlug;
  final String? selectedCountry;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final TextEditingController _quantityController = TextEditingController();
  List<String> productImages = [];
  int quantity = 1;
  late ProductStock productStock;
  String? productHighLight;
  String productDescription = "";
  List<ProductStock> productStocks = [];
  late Map<String, dynamic> attributeMap;
  late Map<String, dynamic> selectedAttributeMap;
  final Completer<void> _completer = Completer<void>();

  void increment() {
    setState(() {
      quantity++;
      _quantityController.text = quantity.toString();
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        _quantityController.text = quantity.toString();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _quantityController.text = quantity.toString();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProductDetailBloc>(),
      child: Scaffold(
          appBar: AppBar(
            actions: [
              FutureBuilder<void>(
                future: _completer.future,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return WishListButton(
                      productStock: productStock,
                      quantity: quantity,
                    );
                  } else {
                    return Container(); // Placeholder while loading
                  }
                },
              ),
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                icon: const Icon(Icons.share_outlined),
              ),
            ],
          ),
          body: BlocConsumer<ProductDetailBloc, ProductDetailState>(
            listener: (context, state) {
              state.maybeWhen(
                success: (productDetail) {
                  productImages = productDetail.productImages ??
                      [productDetail.productImage];
                  productStock = productDetail.productStock.first;
                  context.read<ProductStockCubit>().selectProductStock(productStock);
                  productHighLight = productDetail.productHighLight;
                  productDescription = productDetail.productDescription;
                  productStocks = List.from(productDetail.productStock
                      .map((stock) => ProductStock.copy(stock)));

                  // Extract attributes and assign to map
                  attributeMap = {};
                  for (var stock in productStocks) {
                    for (var attribute in stock.attribute) {
                      if (!attributeMap.containsKey(attribute.name)) {
                        attributeMap[attribute.name] = [];
                      }
                      attributeMap[attribute.name].add({
                        'value': attribute.value,
                        'atbId': attribute.id,
                      });
                    }
                  }

                  // Initialize selectedAttributeMap based on the first product stock
                  selectedAttributeMap = {};
                  for (var attribute in productStock.attribute) {
                    selectedAttributeMap[attribute.name] = {
                      'value': attribute.value,
                      'atbId': attribute.id,
                    };
                  }
                  // Complete the completer
                  if (!_completer.isCompleted) {
                    _completer.complete();
                  }
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.when(
                initial: () {
                  context.read<ProductDetailBloc>().add(
                      ProductDetailEvent.fetchedProductDetail(
                          widget.productSlug, widget.selectedCountry));
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                success: (productDetail) {
                  return Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductDetailHeader(productDetail: productDetail),
                            SizedBox(height: 16),
                            BuildImageCarousel(
                              images: productImages,
                              flashSaleDiscount: productStock.flashSaleDiscount,
                            ),
                            SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProductPrice(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 12),
                                  child: Text(
                                    productDetail.productName,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                                AttributeBuilder(
                                  productStocks: productStocks,
                                ),
                                SizedBox(height: 8),
                                quantityBuilder(),
                                SizedBox(
                                  height: 8,
                                ),
                                BuildNavigationTile(
                                  navigationTitle: "View More Description",
                                  onNavigationTileTap: () {
                                    context
                                        .push('/product-description', extra: {
                                      'selectedProductStock': productStock,
                                      'productDetail': productDetail,
                                      'productDescription': productDescription,
                                      'quantity': quantity,
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                            ProductInfoPanel(productDetail: productDetail),
                            SizedBox(
                              height: 12,
                            ),
                            RatingContainer(
                              reviews: productDetail.reviews,
                            ),
                            SizedBox(height: 120),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: ShoppingButton(
                          quantity: quantity,
                          productStock: productStock,
                        ),
                      ),
                    ],
                  );
                },
                failure: (error) {
                  return Center(
                    child: Text(
                      error,
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              );
            },
          )),
    );
  }

  Container quantityBuilder() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quantity",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(
            height: 4,
          ),
          IntrinsicWidth(
            stepWidth: 6,
            child: BuildTextFormField(
              controller: _quantityController,
              prefixIconWidget: IconButton(
                onPressed: () {
                  decrement();
                },
                iconSize: 18,
                icon: const Icon(Icons.remove),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  increment();
                },
                iconSize: 18,
                icon: const Icon(Icons.add),
              ),
              fillColor: Theme.of(context).colorScheme.primary.withAlpha(60),
              isFilled: true,
            ),
          ),
        ],
      ),
    );
  }
}