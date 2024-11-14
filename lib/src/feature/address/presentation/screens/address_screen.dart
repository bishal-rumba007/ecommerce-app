import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/address/presentation/bloc/address_bloc.dart';
import 'package:ecommerce_app/src/feature/address/presentation/widgets/address_card.dart';
import 'package:ecommerce_app/src/feature/address/presentation/widgets/empty_address.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  // int selectedAddress = 0;
  int addressCount = 0;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddressBloc, AddressState>(
      listener: (context, state) {
        if (state.status == AddressStatus.loaded) {
          setState(() {
            addressCount = state.address.length;
          });
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Addresses"),
          actions: [
            Visibility(
              visible: addressCount < 3,
              child: IconButton(
                onPressed: () {
                  context.push('/create-address');
                },
                icon: const Icon(Icons.add),
              ),
            )
          ],
        ),
        body: BlocBuilder<AddressBloc, AddressState>(
          builder: (context, state) {
            switch (state.status) {
              case AddressStatus.initial:
                // context.read<AddressBloc>().add(const AddressEvent.fetchedAddress());
                return const Center(child: CircularProgressIndicator());
              case AddressStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case AddressStatus.loaded:
                if (state.address.isEmpty) {
                  return EmptyAddress();
                }
                final addresses = state.address;
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                    itemCount: addresses.length,
                    itemBuilder: (context, index) {
                      return AddressCard(
                        address: addresses[index],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                  ),
                );
              case AddressStatus.error:
                return Center(
                  child: Text(state.message!),
                );
            }
          },
        ),
      ),
    );
  }
}
