import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_detail.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/product_info_container.dart';

class ProductInfoPanel extends StatefulWidget {
  const ProductInfoPanel({super.key, required this.productDetail});
  final ProductDetail productDetail;

  @override
  State<ProductInfoPanel> createState() => _ProductInfoPanelState();
}

class _ProductInfoPanelState extends State<ProductInfoPanel> {
  late List<bool> _isExpandedList;
  late List<Map<String, String?>> _productInfoList;

  @override
  void initState() {
    super.initState();
    _isExpandedList = List.generate(2, (index) => false);
    _productInfoList = [
      if(widget.productDetail.productHighLight != null){"Product Highlights": widget.productDetail.productHighLight!},
      if(widget.productDetail.productSpecification != null){"Product Specifications": widget.productDetail.productSpecification!},
    ];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bool hasProductInfo = _productInfoList.isNotEmpty;
    return Visibility(
      visible: hasProductInfo,
      child: ExpansionPanelList(
        dividerColor: theme.colorScheme.onSurfaceVariant.withOpacity(0.2),
        elevation: 1,
        expandedHeaderPadding: EdgeInsets.zero,
        expandIconColor: theme.colorScheme.primary,
        materialGapSize: 8,
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            _isExpandedList[panelIndex] = isExpanded;
          });
        },
        children: List.generate(
          2,
          (index) {
            final info = _productInfoList[index];
            return ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: _isExpandedList[index],
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  visualDensity: VisualDensity.compact,
                  title: Text(
                    info.keys.first,
                    style: theme.textTheme.bodyMedium,
                    maxLines: isExpanded ? null : 1,
                    overflow: isExpanded ? null : TextOverflow.ellipsis,
                  ),
                );
              },
              body: ListTile(
                visualDensity: VisualDensity.compact,
                title: ProductInfoContainer(
                  productHighLight: info.values.first,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
