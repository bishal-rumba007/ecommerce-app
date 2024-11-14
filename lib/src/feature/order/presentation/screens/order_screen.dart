import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order.dart';
import 'package:ecommerce_app/src/feature/order/presentation/bloc/order_bloc.dart';
import 'package:ecommerce_app/src/feature/order/presentation/widgets/order_card.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<OrderBloc>()
        ..add(
          const OrderEvent.fetchedOrders(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Your Orders'),
        ),
        body: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (result) {
                final orders = result as List<ProductOrder>;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 20),
                      //   child: BuildTextFormField(
                      //     controller: searchController,
                      //     prefixIconWidget: SvgPicture.asset(
                      //       "assets/icons/search.svg",
                      //       fit: BoxFit.scaleDown,
                      //     ),
                      //     suffixIcon: Row(
                      //       mainAxisSize: MainAxisSize.min,
                      //       children: [
                      //         Text(
                      //           "|",
                      //           style: Theme.of(context)
                      //               .textTheme
                      //               .bodySmall
                      //               ?.copyWith(
                      //                 fontSize: 20,
                      //                 color: AppColor.greyMedium,
                      //               ),
                      //         ),
                      //         IconButton(
                      //           onPressed: () {
                      //             context.push('/order-filter');
                      //           },
                      //           icon: const Icon(Icons.tune_outlined),
                      //         )
                      //       ],
                      //     ),
                      //     hintText: "Search all orders",
                      //     fillColor: Colors.white,
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      if (orders.isEmpty)
                        Center(
                          child: Text("No orders found"),
                        ),
                      RefreshIndicator.adaptive(
                        displacement: 10,
                        edgeOffset: 1,
                        onRefresh: () {
                          return Future.delayed(
                            Duration(milliseconds: 1600),
                            () {
                             if(!context.mounted) return;
                              context.read<OrderBloc>()
                                .add(
                                  const OrderEvent.fetchedOrders(),
                                );
                            },
                          );
                        },
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: orders.length,
                          itemBuilder: (context, index) {
                            return OrderCard(
                              order: orders[index],
                            );
                          },
                          separatorBuilder: (_, __) => SizedBox(
                            height: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                );
              },
              failure: (message) {
                return Center(
                  child: Text(message),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
