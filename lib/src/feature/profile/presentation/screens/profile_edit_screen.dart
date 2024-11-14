import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/edit_user_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:ecommerce_app/src/shared/bloc/user_bloc/user_bloc.dart';

class ProfileEditScreen extends StatefulWidget {
  final User user;
  const ProfileEditScreen({super.key, required this.user});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  List<XFile>? _imageFileList;
  String? imageUrl;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dobController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.user.name;
    _emailController.text = widget.user.email;
    _phoneController.text = widget.user.phoneNo;
    imageUrl = widget.user.avatar;
  }

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imageFileList = [image];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (message) {
            SnackBars.showSuccessSnackBar(
              message,
              gravity: ToastGravity.CENTER,
            );
            context.read<UserBloc>().add(const GetUser());
            context.go('/profile');
          },
          failure: (message) {
            SnackBars.showErrorSnackBar(
              message,
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Edit Profile"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.w),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Container(
                          height: 112.h,
                          width: 112.w,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: _imageFileList == null
                              ? imageUrl != null ? ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    imageUrl!,
                                    fit: BoxFit.cover,
                                  ),
                                ) : SizedBox()
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.file(
                                    File(_imageFileList![0].path),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: _pickImage,
                              child: Container(
                                height: 32.h,
                                width: 32.w,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(
                                  imageUrl != null ? Icons.edit : Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  BuildTextFormField(
                    controller: _nameController,
                    hintText: "Full Name",
                    prefixIconWidget: Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: SvgPicture.asset(
                        "assets/icons/person.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Full Name";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  BuildTextFormField(
                    controller: _emailController,
                    hintText: "Email ID",
                    prefixIconWidget: const Icon(Icons.mail_outline_rounded),
                    validator: (value) {
                      return InputValidator.emailValidator(value);
                    },
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  BuildTextFormField(
                    controller: _phoneController,
                    hintText: "Phone Number",
                    prefixIconWidget: const Icon(Icons.phone),
                    validator: (value) {
                      return InputValidator.phoneValidator(value);
                    },
                    textInputType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [LengthLimitingTextInputFormatter(13)],
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  SizedBox(
                    height: 250.h,
                  ),
                  _buildButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          orElse: () {
            return BuildButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _updateUser();
                }
              },
              buttonWidget: const Text("Save"),
            );
          },
        );
      },
    );
  }

  void _updateUser() {
    final imgPath = _imageFileList?.first;
    final image = imgPath == null ? null : File(imgPath.path);
    context.read<ProfileBloc>().add(
          UpdateUserInfo(
            userUpdateParams: EditUserInfoParams(
              image: image,
              name: _nameController.text,
              email: _emailController.text,
              phoneNo: _phoneController.text,
              dateofbirth: _dobController.text,
            ),
          ),
        );
  }
}
