import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/cubit/selected_category_cubit.dart';

class SubCategoryBuilder extends StatelessWidget {
  const SubCategoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedCategoryCubit, SelectedCategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          categorySelected: (selectedCategory) {
            final subCategories = selectedCategory.subCategory;
            return subCategories.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shop by Category",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.64,
                        ),
                        itemCount: subCategories.length,
                        itemBuilder: (context, index) {
                          final subCategory = subCategories[index];
                          return GestureDetector(
                            onTap: () {
                              context.go(
                                '/categories/product-view',
                                extra: subCategory,
                              );
                            },
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                          subCategory.image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  subCategory.name,
                                  style: Theme.of(context).textTheme.labelSmall,
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  )
                : const Center(child: Text('No subcategory found'));
          },
          orElse: () => const Center(child: Text('No category selected')),
        );
      },
    );
  }
}
