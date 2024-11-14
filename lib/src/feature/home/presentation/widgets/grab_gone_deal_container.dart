import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';
import 'package:ecommerce_app/src/feature/home/data/models/flash_sale_model.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/flash_sale/bloc/flash_sale_bloc.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/flash_item_card.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/flash_item_loading.dart';

class GrabOrGoneDealContainer extends StatefulWidget {
  const GrabOrGoneDealContainer({super.key});

  @override
  State<GrabOrGoneDealContainer> createState() =>
      _GrabOrGoneDealContainerState();
}

class _GrabOrGoneDealContainerState extends State<GrabOrGoneDealContainer> {
  String? country;

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return BlocListener<CountryBloc, CountryState>(
      listenWhen: (previous, current) {
        return previous.country != current.country;
      },
      listener: (context, state) {
        if (country != state.country?.name) {
          setState(() {
            country = state.country?.name;
          });
          context.read<FlashSaleBloc>().add(FetchedFlashSale(country));
        }
      },
      child: BlocBuilder<CountryBloc, CountryState>(
        builder: (context, state) {
          country = state.country?.name;
          return BlocBuilder<FlashSaleBloc, FlashSaleState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  context.read<FlashSaleBloc>().add(FetchedFlashSale(country));
                  return const SizedBox.shrink();
                },
                loading: () {
                  return FlashItemLoading(isTablet: isTablet);
                },
                loaded: (result) {
                  final flashSale =
                      result.isNotEmpty ? result.first : FlashSaleModel.empty();
                  final endDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(
                    DateTime.parse(flashSale.endDate),
                  );
                  return Visibility(
                    visible: flashSale.flashItems.isNotEmpty,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(19.5, 0, 19.5, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                flashSale.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              CountDownContainer(
                                endDateString: endDate,
                                titleColor: const Color(0xFFFF7070),
                                backGroundColor: const [
                                  Color(0xFFFEA9A9),
                                  Color(0xFFEF9797),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 19.5),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColor.primary.withOpacity(0.16),
                            borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(20),
                            ),
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: flashSale.flashItems
                                  .asMap()
                                  .entries
                                  .map((entry) {
                                int index = entry.key;
                                final product = entry.value;
                                return Row(
                                  children: [
                                    Padding(
                                      padding: index == 0
                                          ? const EdgeInsets.only(
                                              left: 16, right: 20)
                                          : const EdgeInsets.only(right: 20),
                                      child: SizedBox(
                                        width: isTablet
                                            ? (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    68) /
                                                3.2
                                            : (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    48) /
                                                2.1,
                                        child: FlashItemCard(
                                          index: index,
                                          flashItem: product,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                },
                error: (error) {
                  return Center(
                    child: Text(error),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
