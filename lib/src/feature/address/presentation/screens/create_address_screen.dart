import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/add_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/feature/address/presentation/bloc/address_bloc.dart';

class CreateAddressScreen extends StatefulWidget {
  const CreateAddressScreen({super.key, this.address});
  final DeliveryAddress? address;

  @override
  State<CreateAddressScreen> createState() => _CreateAddressScreenState();
}

class _CreateAddressScreenState extends State<CreateAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController addressTitleController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final countryController = TextEditingController();
  final nameController = TextEditingController();
  final streetAddressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.address != null) {
      addressTitleController.text = widget.address!.addressTitle;
      firstNameController.text = widget.address!.firstName;
      lastNameController.text = widget.address!.lastName;
      countryController.text = widget.address!.countryRegion;
      streetAddressController.text = widget.address!.streetAddress;
      cityController.text = widget.address!.townCity;
      stateController.text = widget.address!.state;
      zipCodeController.text = widget.address?.zipCode ?? "";
      phoneNumberController.text = widget.address!.phone;
      emailController.text = widget.address!.email;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddressBloc, AddressState>(
      listener: (context, state) {
        if (state.status == AddressStatus.loading) {
          final message = widget.address != null
              ? "Updating Address..."
              : "Adding Address...";
          buildLoadingDialog(context, message);
        }
        if (state.status == AddressStatus.loaded) {
          context.pop();
          context.pop();
        }
        if (state.status == AddressStatus.error) {
          context.pop();
          SnackBars.showErrorSnackBar(state.message!);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              Text(widget.address != null ? "Update Address" : "New Address"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  BuildTextFormField(
                    controller: addressTitleController,
                    hintText: "Enter address title",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Address Title cannot be empty";
                      }
                      return null;
                    },
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(height: 14),
                  BuildTextFormField(
                    controller: firstNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "First Name cannot be empty";
                      }
                      return null;
                    },
                    prefixIconWidget: SvgPicture.asset(
                      "assets/icons/person.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "First Name",
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BuildTextFormField(
                    controller: lastNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Last Name cannot be empty";
                      }
                      return null;
                    },
                    prefixIconWidget: SvgPicture.asset(
                      "assets/icons/person.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Last Name",
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BuildTextFormField(
                    controller: countryController,
                    prefixIconWidget: const Icon(CupertinoIcons.globe),
                    hintText: "Country/Region",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Country/Region cannot be empty";
                      }
                      return null;
                    },
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BuildTextFormField(
                    controller: streetAddressController,
                    hintText: "Street Address",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Street Address cannot be empty";
                      }
                      return null;
                    },
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BuildTextFormField(
                    controller: cityController,
                    hintText: "City",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "City cannot be empty";
                      }
                      return null;
                    },
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BuildTextFormField(
                    controller: stateController,
                    hintText: "State",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "State cannot be empty";
                      }
                      return null;
                    },
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BuildTextFormField(
                    controller: zipCodeController,
                    hintText: "Zip Code",
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BuildTextFormField(
                    controller: phoneNumberController,
                    hintText: "Phone Number",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone Number cannot be empty";
                      }
                      return null;
                    },
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  BuildTextFormField(
                    controller: emailController,
                    hintText: "Email",
                    validator: (value) {
                      return InputValidator.emailValidator(value);
                    },
                    textInputType: TextInputType.emailAddress,
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BuildButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final address = AddDeliveryAddressParams(
                          firstName: firstNameController.text,
                          lastName: lastNameController.text,
                          addressTitle: addressTitleController.text,
                          countryRegion: countryController.text,
                          streetAddress: streetAddressController.text,
                          state: stateController.text,
                          townCity: cityController.text,
                          phone: phoneNumberController.text,
                          email: emailController.text,
                        );
                        if (widget.address != null) {
                          final deliveryAddress = DeliveryAddress(
                            id: widget.address!.id,
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            addressTitle: addressTitleController.text,
                            countryRegion: countryController.text,
                            streetAddress: streetAddressController.text,
                            state: stateController.text,
                            townCity: cityController.text,
                            phone: phoneNumberController.text,
                            email: emailController.text,
                            isDefault: false,
                          );
                          context.read<AddressBloc>().add(
                                AddressEvent.adressUpdated(deliveryAddress),
                              );
                        } else {
                          context.read<AddressBloc>().add(
                                AddressEvent.addressAdded(address),
                              );
                        }
                      }
                    },
                    buttonWidget: const Text("Save Address"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
