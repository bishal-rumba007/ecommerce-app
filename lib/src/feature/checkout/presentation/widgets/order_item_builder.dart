import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/currency_util.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/check_out_item.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/bloc/check_out_bloc.dart';

class OrderItemBuilder extends StatefulWidget {
  const OrderItemBuilder({super.key, required this.onItemsLoaded});
  final Function(List<CheckOutItem>) onItemsLoaded;

  @override
  State<OrderItemBuilder> createState() => _OrderItemBuilderState();
}

class _OrderItemBuilderState extends State<OrderItemBuilder> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<CheckOutBloc, CheckOutState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (checkOutModel) {
            final checkOutItems = checkOutModel.checkOutItem;
            widget.onItemsLoaded(checkOutItems);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                backgroundColor: theme.colorScheme.surface,
                childrenPadding: const EdgeInsets.only(bottom: 12),
                controlAffinity: ListTileControlAffinity.platform,
                collapsedBackgroundColor: Colors.grey.shade100,
                // shape: Border(),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Your Items ',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            '(${checkOutItems.length} ${checkOutItems.length > 1 ? 'items' : 'item'})',
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: checkOutItems.length,
                    itemBuilder: (context, index) {
                      final item = checkOutItems[index];
                      return Container(
                        color: AppColor.greyLight,
                        child: ListTile(
                          visualDensity: VisualDensity.compact,
                          isThreeLine: true,
                          title: Text(
                            item.productName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Text(
                                  '${item.quantity} x ${item.price}',
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '${getCurrency(item.countryName)} ${item.price * item.quantity}',
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    color: theme.colorScheme.primary.withOpacity(0.8),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
