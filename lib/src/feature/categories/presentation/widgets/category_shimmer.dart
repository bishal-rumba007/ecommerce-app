import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: ListView(
            padding: EdgeInsets.zero,
            children: List.generate(
              5,
              (index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Shimmer(
                    height: 50,
                    borderRadius: 4,
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Flexible(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AspectRatio(
                    aspectRatio: 16 / 6,
                    child: Shimmer(
                      borderRadius: 8,
                    )),
                const SizedBox(
                  height: 16,
                ),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.64,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Column(
                      children: [
                        Expanded(
                            child: Shimmer(
                          borderRadius: 6,
                        )),
                        SizedBox(
                          height: 4,
                        ),
                        Shimmer(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                          borderRadius: 2,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
