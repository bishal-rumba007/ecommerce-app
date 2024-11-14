import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/filter/domain/entities/attribute.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/cubit/attribute_cubit.dart';

class AttributeListView extends StatelessWidget {
  const AttributeListView({super.key, required this.attributes});
  final List<Attribute> attributes;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: attributes.length,
        itemBuilder: (context, index) {
          final attribute = attributes[index];
          return BlocSelector<AttributeCubit, AttributeState, Attribute?>(
            selector: (state) {
              return state.maybeWhen(
                attributeSelected: (selectedAttribute) => selectedAttribute,
                orElse: () => null,
              );
            },
            builder: (context, selectedAttribute) {
              final isSelected = selectedAttribute?.id == attribute.id;
              return GestureDetector(
                onTap: () {
                  context.read<AttributeCubit>().selectAttribute(attribute);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  decoration: BoxDecoration(
                    color: isSelected 
                        ? Theme.of(context).colorScheme.primary
                        : const Color(0xFFF1F4FD),
                    borderRadius: index == 0
                        ? BorderRadius.vertical(
                            top: Radius.circular(6),
                          )
                        : index == attributes.length - 1
                            ? BorderRadius.vertical(
                                bottom: Radius.circular(6),
                              )
                            : null,
                  ),
                  child: Center(
                    child: Text(
                      attribute.attributeName,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: isSelected
                                ? Colors.white
                                : AppColor.greyStrong,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
