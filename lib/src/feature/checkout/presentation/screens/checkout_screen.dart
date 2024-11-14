import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/address/presentation/bloc/address_bloc.dart';
import 'package:ecommerce_app/src/feature/address/presentation/widgets/address_list.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/entities/check_out_item.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/widgets/bill_detail_card.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/widgets/order_item_builder.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/widgets/payment_method_card.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_result.dart';
import 'package:ecommerce_app/src/feature/order/domain/usecases/create_order_usecase.dart';
import 'package:ecommerce_app/src/feature/order/presentation/bloc/order_bloc.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final TextEditingController promoCodeController = TextEditingController();
  int quantity = 1;
  String? addressId;
  String? paymentMethod;
  List<CheckOutItem>? checkOutItems;
  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderBloc, OrderState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            buildLoadingDialog(context, "Placing Order!!");
          },
          success: (result) {
            context.pop();
            final orderResult = result as OrderResult;
            if (orderResult.paymentMethod == "cod") {
              context.push("/payment-summary", extra: orderResult);
            } else {
              makePayment(context, orderResult);
            }
          },
          failure: (message) {
            context.pop();
            SnackBars.showErrorSnackBar(message);
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          addressId = state.selectedAddress?.id;
          return Scaffold(
              appBar: AppBar(
                title: const Text("Checkout & Confirmation"),
                centerTitle: true,
              ),
              body: Stack(
                fit: StackFit.expand,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const AddressList(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          indent: 16,
                          endIndent: 16,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 10),
                        OrderItemBuilder(
                          onItemsLoaded: (items) {
                            checkOutItems = items;
                          },
                        ),
                        BillDetailCard(),
                        PaymentMethodContainer(
                          onPaymentMethodSelected: (value) {
                            setState(() {
                              paymentMethod = value;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 300,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: BuildButton(
                      onPressed: paymentMethod != null
                          ? () {
                              final currency =
                                  getCurrency(checkOutItems!.first.countryName);

                              final orderParams = CreateOrderParams(
                                addressId: addressId!,
                                currency: currency,
                                paymentMethod: paymentMethod!,
                                items: checkOutItems!,
                              );

                              context.read<OrderBloc>().add(
                                    OrderEvent.orderCreated(orderParams),
                                  );
                            }
                          : null,
                      buttonWidget: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Continue"),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }

  Future<void> makePayment(
      BuildContext context, OrderResult orderResult) async {
    try {
      final deliveryAddress = orderResult.deliveryAddress;
      await Stripe.instance
          .initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          billingDetails: BillingDetails(
            email: orderResult.deliveryAddress.email,
            phone: orderResult.deliveryAddress.phone,
            name: orderResult.deliveryAddress.firstName,
            address: Address(
              city: deliveryAddress.townCity,
              country: deliveryAddress.countryRegion,
              line1: deliveryAddress.streetAddress,
              line2: null,
              postalCode: deliveryAddress.zipCode,
              state: deliveryAddress.state,
            ),
          ),
          paymentIntentClientSecret: orderResult.clientSecret,
          style: ThemeMode.light,
          customFlow: false,
          merchantDisplayName: 'Pokhara Hardware',
        ),
      )
          .then((value) {
        if (!context.mounted) return;
        displayPaymentSheet(context, orderResult);
      });
    } catch (e) {
      SnackBars.showErrorSnackBar(e.toString());
    }
  }

  void displayPaymentSheet(
      BuildContext context, OrderResult orderResult) async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) {
        if (context.mounted) {
          context.push("/payment-summary", extra: orderResult);
        }
      }).onError(
        (e, stackTrace) {
          if(e is StripeException){
            SnackBars.showErrorSnackBar(e.error.message!);
          }
        },
      );
    } on StripeException catch (e) {
      SnackBars.showErrorSnackBar(e.error.message!);
    }
  }
}
