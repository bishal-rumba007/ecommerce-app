import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/flash_sale/bloc/flash_sale_bloc.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/slider/sliders_bloc.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/grab_gone_deal_container.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/home_slider.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/promo_container.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/promo_slider.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/popular_products.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context)
          .colorScheme
          .copyWith(surface: const Color(0xFFF8F8F8))
          .surface,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeSlider(),
            const SizedBox(
              height: 20,
            ),
            BlocProvider(
              create: (_) => sl<SlidersBloc>(),
              child: const PromoContainer(),
            ),
            // const ProductList(),
            // const SizedBox(
            //   height: 20,
            // ),
            // const DealContainer(),
            // SizedBox(
            //   height: 20,
            // ),
            BlocProvider(
              create: (_) => sl<FlashSaleBloc>(),
              child: const GrabOrGoneDealContainer(),
            ),
            BlocProvider(
              create: (context) => sl<SlidersBloc>(),
              child: const PromoSlider(aspectRatio: 3.2,
              padding: EdgeInsets.fromLTRB(19.5, 0, 19.5, 20)
              ),
            ),
            BlocProvider(
              create: (context) => sl<ProductBloc>(),
              child: const PopularProducts(),
            ),
            // const ProductCatalog(titleText: "Recommended for you"),
            // const SizedBox(
            //   height: 20,
            // ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          context.push("/search-product");
        },
        child: SvgPicture.asset("assets/icons/search.svg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}

// class ProductCatalog extends StatelessWidget {
//   const ProductCatalog({super.key, required this.titleText});
//   final String titleText;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 19.5),
//           child: Text(
//             titleText,
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//         ),
//         const SizedBox(
//           height: 12,
//         ),
//         SizedBox(
//           height: 215,
//           width: double.infinity,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: 4,
//             itemBuilder: (context, index) {
//               return BuildProductContainer(index: index);
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
