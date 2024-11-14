import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';
import 'package:ecommerce_app/src/feature/product/presentation/cubit/product_stock_cubit.dart';

class AttributeChip extends StatelessWidget {
  const AttributeChip({super.key, required this.productStock});

  final ProductStock productStock;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProductStockCubit, ProductStockState, bool>(
      selector: (state) => state.selectedProductStock?.id == productStock.id,
      builder: (context, isSelected) {
        final attributeNames =
            productStock.attribute.map((e) => e.name).join('/');
        final attributeValues =
            productStock.attribute.map((e) => e.value).join('/');
        return RawChip(
          onSelected: (value) {
            context.read<ProductStockCubit>().selectProductStock(productStock);
          },
          label: Text('$attributeNames: $attributeValues'),
          backgroundColor: isSelected ? Theme.of(context).colorScheme.primary : Colors.white,
          labelStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: isSelected ? Colors.white : Colors.black,
          ),
          selectedColor: Theme.of(context).colorScheme.primary,
          padding: EdgeInsets.all(8),
          side: BorderSide(
            color: isSelected ? Colors.transparent : Colors.grey.shade200,
            width: 1,
          ),
        );
      },
    );
  }
}
