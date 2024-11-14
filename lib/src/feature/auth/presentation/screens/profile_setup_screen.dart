import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/auth_bloc.dart';

class ProfileSetUpScreen extends StatefulWidget {
  const ProfileSetUpScreen({super.key, required this.registerInfo});
  final Map<String, dynamic> registerInfo;

  @override
  State<ProfileSetUpScreen> createState() => _ProfileSetUpScreenState();
}

class _ProfileSetUpScreenState extends State<ProfileSetUpScreen> {
  List<XFile>? _imageFileList;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imageFileList = [image];
      });
    }
  }

  final _dropDownMenuItem = const [
    DropdownMenuItem(
      value: 'Male',
      child: Row(
        children: [
          Icon(Icons.male),
          SizedBox(width: 10),
          Text('Male'),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'Female',
      child: Row(
        children: [
          Icon(Icons.female),
          SizedBox(width: 10),
          Text('Female'),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) {
        return current != previous;
      },
      listener: (context, state) {
        state.maybeWhen(
          failure: (exception) {
            SnackBars.showErrorSnackBar(exception.message.toString());
          },
          registered: (message) {
            context.push('/otp', extra: widget.registerInfo['email']);
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: AspectRatio(
                      aspectRatio: 2.5,
                      child: SvgPicture.asset(
                        "assets/icons/logo.svg",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    AppString.profileSetupScreenTitle,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 124,
                    width: 124,
                    child: Stack(
                      children: [
                        Container(
                          height: 124,
                          width: 124,
                          decoration: BoxDecoration(
                            color: AppColor.greyLight,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: _imageFileList == null
                              ? SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: SvgPicture.asset(
                                    "assets/icons/person.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.file(
                                    File(_imageFileList![0].path),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed: () async {
                                  await _pickImage();
                                },
                                icon: Icon(
                                  _imageFileList != null
                                      ? Icons.edit
                                      : Icons.camera_alt_outlined,
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    AppString.profileSetupScreenSubTitle,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontSize: 13,
                        ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BuildTextFormField(
                    controller: _nameController,
                    hintText: "Full Name",
                    prefixIconWidget: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: SvgPicture.asset(
                        "assets/icons/person.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Name";
                      }
                      return null;
                    },
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  DropdownButtonFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null) {
                        return "Please select gender";
                      }
                      return null;
                    },
                    elevation: 1,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).colorScheme.inverseSurface,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 16),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    value: null,
                    onChanged: (value) {
                      _genderController.text = value.toString();
                    },
                    items: _dropDownMenuItem,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w500),
                    hint: Row(
                      children: [
                        Icon(
                          Icons.female,
                          color: AppColor.greyStrong,
                          size: 24,
                        ),
                        const SizedBox(width: 10),
                        const Text('Gender'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  _buildButton(authBloc),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(AuthBloc authBloc) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return state.maybeWhen(
        loading: () => const Center(child: CircularProgressIndicator()),
        orElse: () {
          return BuildButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (_imageFileList == null) {
                  SnackBars.showWarningSnackBar(
                      "Please select a profile picture");
                } else {
                  _registerUser(authBloc);
                }
              }
            },
            buttonWidget: const Text("Sign Up"),
          );
        },
      );
    });
  }

  void _registerUser(AuthBloc authBloc) {
    authBloc.add(
      RegisterRequested(
        email: widget.registerInfo['email'],
        phone: widget.registerInfo['phone'],
        password: widget.registerInfo['password'],
        password2: widget.registerInfo['password2'],
        image: File(_imageFileList![0].path),
        name: _nameController.text.trim(),
        gender: _genderController.text,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
