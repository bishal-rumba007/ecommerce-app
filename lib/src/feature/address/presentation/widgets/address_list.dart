import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/address/presentation/bloc/address_bloc.dart';
import 'package:ecommerce_app/src/feature/address/presentation/widgets/add_address_card.dart';
import 'package:ecommerce_app/src/feature/address/presentation/widgets/address_card.dart';
import 'package:ecommerce_app/src/feature/address/presentation/widgets/address_loading_card.dart';

class AddressList extends StatelessWidget {
  const AddressList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<AddressBloc, AddressState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == AddressStatus.loading && state.isDeletion) {
          buildLoadingDialog(context, "Processing...");
        }
        if (state.status == AddressStatus.loaded && state.isDeletion) {
          Navigator.of(context).pop();
        }
      },
      child: BlocBuilder<AddressBloc, AddressState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          if (state.status == AddressStatus.loading && !state.isDeletion) {
            return LoadingAddressCard();
          }
          final addresses = state.address;
          if (addresses.isEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: theme.colorScheme.primary.withOpacity(0.4),
                    ),
                  ),
                  child: ListTile(
                    onTap: () {
                      context.push('/create-address');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    leading: Icon(Icons.location_on_outlined,
                        color: theme.primaryColor),
                    title: Text(
                      "Add Delivery Address",
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: AppColor.primary),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ),
              ],
            );
          }
          return AspectRatio(
            aspectRatio: 16 / 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Address",
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: addresses.length < 3
                        ? addresses.length + 1
                        : addresses.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 6),
                    itemBuilder: (context, index) {
                      if (index < addresses.length) {
                        final address = addresses[index];
                        return SizedBox(
                          width: 260,
                          child: AddressCard(address: address),
                        );
                      } else {
                        return AddAddressCard();
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}