import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/address/presentation/bloc/address_bloc.dart';
import 'package:ecommerce_app/src/feature/address/presentation/widgets/address_menu.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key, required this.address});
  final DeliveryAddress address;

  @override
  Widget build(BuildContext context) {
    final addressLine =
        '''${address.streetAddress}, ${address.townCity}, ${address.state} ${address.zipCode ?? ""}, ${address.countryRegion}''';

    return BlocSelector<AddressBloc, AddressState, DeliveryAddress?>(
      selector: (state) => state.selectedAddress,
      builder: (context, selectedAddress) {
        final isSelected = selectedAddress == address;
        return GestureDetector(
          onTap: () {
            context.read<AddressBloc>().add(AddressEvent.addressSelected(address));
          },
          child: Card(
            color: Colors.grey.shade100,
            elevation: 1,
            shadowColor: Colors.grey.shade100.withOpacity(0.4),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: isSelected
                            ? Theme.of(context).primaryColor
                            : AppColor.greySemiLight,
                        child: Icon(
                          Icons.location_on_outlined,
                          color: isSelected
                              ? AppColor.white
                              : AppColor.greyMedium,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        address.addressTitle,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const Spacer(),
                      AddressMenu(
                        address: address,
                        onDeleteAddress: () {
                          context.read<AddressBloc>().add(AddressEvent.addressDeleted(address));
                          context.pop();
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    addressLine,
                    style: Theme.of(context).textTheme.labelMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    address.phone,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}