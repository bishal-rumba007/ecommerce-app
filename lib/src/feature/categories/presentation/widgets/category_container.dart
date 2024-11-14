import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/bloc/category_bloc.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            context.read<CategoryBloc>().add(const FetchedCategory());
            return const SizedBox.shrink();
          },
          loading: () {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 19.5),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.14),
                    offset: const Offset(1, 2),
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Shimmer(
                        padding: EdgeInsets.all(24),
                        borderRadius: 24,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          loaded: (categories) {
            return Container(
                margin: const EdgeInsets.symmetric(horizontal: 19.5),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(0.14),
                      offset: const Offset(1, 2),
                      blurRadius: 2.0,
                    )
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: categories.map((category) {
                      final categoryName = isTablet
                          ? category.name
                          : category.name.length > 14
                              ? "${category.name.substring(0, 10)}.."
                              : category.name;
                      return Material(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: InkWell(
                            onTap: () {
                              context.push('/home/category-product', extra: category);
                            },
                            splashColor: Theme.of(context).splashColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  child: ClipOval(
                                    child: CacheImageExtension(
                                      imageUrl: category.image,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    categoryName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    maxLines: 1,
                                    overflow: TextOverflow.fade,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ));
          },
          error: (exception) {
            return Center(
              child: Text(exception.message),
            );
          },
        );
      },
    );
  }
}
