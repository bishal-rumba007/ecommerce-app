import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_detail.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';
import 'package:ecommerce_app/src/feature/product/presentation/cubit/product_stock_cubit.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_info_container.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/shopping_button.dart';

class ProductDescriptionScreen extends StatefulWidget {
  const ProductDescriptionScreen(
      {super.key,
      required this.productDetail,
      required this.productDescription,
      required this.selectedProductStock,
      required this.quantity});
  final int quantity;
  final ProductDetail productDetail;
  final String productDescription;
  final ProductStock selectedProductStock;

  @override
  State<ProductDescriptionScreen> createState() =>
      _ProductDescriptionScreenState();
}

class _ProductDescriptionScreenState extends State<ProductDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isTablet = Responsive.isTablet(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Description"),
      ),
      body: BlocBuilder<ProductStockCubit, ProductStockState>(
        builder: (context, state) {
          if (state.selectedProductStock == null) {
            return Container();
          }
          return Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: isTablet ? 110 : 70,
                              maxWidth: isTablet ? 110 : 70,
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: CacheImageExtension(
                                    imageUrl:
                                        widget.productDetail.productImage)),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.productDetail.productName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: widget.productDetail.brandName,
                                      style:
                                          theme.textTheme.labelLarge?.copyWith(
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "  ${widget.productDetail.modelNo}",
                                      style:
                                          theme.textTheme.labelMedium?.copyWith(
                                        color:
                                            theme.colorScheme.onSurfaceVariant,
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Description",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      ProductInfoContainer(
                        productHighLight: state.selectedProductStock?.specification,
                      ),
                      SizedBox(
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ShoppingButton(
                  quantity: widget.quantity,
                  productStock: state.selectedProductStock!,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
