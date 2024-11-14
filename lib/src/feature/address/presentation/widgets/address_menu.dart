import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';

enum _MenuValues { edit, delete }

class AddressMenu extends StatelessWidget {
  const AddressMenu({
    super.key,
    required this.address,
    this.onDeleteAddress,
  });

  final DeliveryAddress address;
  final VoidCallback? onDeleteAddress;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_MenuValues>(
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: _MenuValues.edit,
          child: Text("Edit"),
        ),
        const PopupMenuItem(
          value: _MenuValues.delete,
          child: Text("Delete"),
        ),
      ],
      iconSize: 20,
      iconColor: AppColor.greyMedium,
      onSelected: (value) {
        switch (value) {
          case _MenuValues.edit:
            context.push('/create-address', extra: address);
            break;
          case _MenuValues.delete:
            showAdaptiveDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Are you Sure?",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "You want to remove this\nAddress?",
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          BuildOutlinedButton(
                            onPressed: () {
                              context.pop();
                            },
                            buttonStyle: Theme.of(context)
                                .outlinedButtonTheme
                                .style
                                ?.copyWith(
                                  minimumSize: WidgetStateProperty.all<Size>(
                                    const Size(100, 30),
                                  ),
                                  padding: WidgetStateProperty.all<
                                      EdgeInsetsGeometry>(
                                    const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                  ),
                                  textStyle: WidgetStateProperty.all<TextStyle>(
                                    const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.red),
                                  ),
                                ),
                            buttonWidget: Text("Cancel"),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          BuildButton(
                            onPressed: onDeleteAddress,
                            buttonStyle: Theme.of(context)
                                .outlinedButtonTheme
                                .style
                                ?.copyWith(
                                  backgroundColor:
                                      WidgetStateProperty.all<Color>(
                                    Theme.of(context).colorScheme.error,
                                  ),
                                  foregroundColor:
                                      WidgetStateProperty.all<Color>(
                                    Colors.white,
                                  ),
                                  minimumSize: WidgetStateProperty.all<Size>(
                                    const Size(100, 30),
                                  ),
                                  side: WidgetStateProperty.all<BorderSide>(
                                      const BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  )),
                                  padding: WidgetStateProperty.all<
                                      EdgeInsetsGeometry>(
                                    const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 10),
                                  ),
                                  textStyle: WidgetStateProperty.all<TextStyle>(
                                    const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                            buttonWidget: const Text("Yes"),
                          ),
                        ]),
                      ],
                    ),
                  ),
                );
              },
            );
            break;
        }
      },
    );
  }
}
