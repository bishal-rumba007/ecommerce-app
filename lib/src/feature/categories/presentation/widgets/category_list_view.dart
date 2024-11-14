import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/cubit/selected_category_cubit.dart';


class CategoryListView extends StatelessWidget {
  final List<Category> categories;

  const CategoryListView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return BlocSelector<SelectedCategoryCubit, SelectedCategoryState, Category?>(
          selector: (state) {
            return state.maybeWhen(
              categorySelected: (selectedCategory) => selectedCategory,
              orElse: () => null,
            );
          },
          builder: (context, selectedCategory) {
            final isSelected = selectedCategory?.id == category.id;
            return InkWell(
              onTap: () {
                context.read<SelectedCategoryCubit>().selectCategory(category);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isSelected ? AppColor.primary : const Color(0xFFF1F4FD),
                  borderRadius: index == 0
                      ? const BorderRadius.vertical(
                          top: Radius.circular(6),
                        )
                      : index == categories.length - 1
                          ? const BorderRadius.vertical(
                              bottom: Radius.circular(6),
                            )
                          : null,
                ),
                child: Center(
                  child: Text(
                    category.name,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: isSelected ? Colors.white : AppColor.greyStrong,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}