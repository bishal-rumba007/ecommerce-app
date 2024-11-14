import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/shared/bloc/user_bloc/user_bloc.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  User? currentUser;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Scaffold(
          appBar:
              AppBar(centerTitle: true, title: const Text("Profile"), actions: [
            TextButton(
              onPressed: currentUser == null
                  ? null
                  : () {
                      context.push('/edit-profile', extra: currentUser);
                    },
              child: Text(
                "Edit",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600, color: AppColor.primary),
              ),
            )
          ]),
          body: state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (user) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  currentUser = user;
                });
              });
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 36,
                        child: user.avatar != null
                            ? CacheImageExtension(imageUrl: user.avatar!)
                            : Icon(
                                Icons.person,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                      ),
                      title: Text(user.name.split(" ").first),
                      subtitle: Text(
                        user.email,
                      ),
                      titleTextStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                      subtitleTextStyle:
                          Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: AppColor.greyStrong,
                              ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildAccountListTile(context, "Name", user.name),
                    SizedBox(
                      height: 8.h,
                    ),
                    buildAccountListTile(
                      context,
                      "Phone Number",
                      user.phoneNo,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    buildAccountListTile(
                      context,
                      "Gender",
                      user.gender,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    buildAccountListTile(
                      context,
                      "Email",
                      user.email,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    ListTile(
                      title: const Text("Password"),
                      titleTextStyle: Theme.of(context).textTheme.bodySmall,
                      trailing: TextButton(
                        onPressed: () {
                          context.push('/current-password');
                        },
                        child: Text(
                          "Change Password",
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: AppColor.primary,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BuildButton(
                      onPressed: () {
                        context.push('/delete-account');
                      },
                      buttonStyle: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.red),
                      ),
                      buttonWidget: const Text('Delete Account'),
                    )
                  ],
                ),
              );
            },
            error: (error) {
              return Center(
                child: Text(error),
              );
            },
            hasUser: (haveUser) => const SizedBox(),
          ),
        );
      },
    );
  }

  ListTile buildAccountListTile(
      BuildContext context, String label, String title) {
    return ListTile(
      title: Text(label),
      titleTextStyle: Theme.of(context).textTheme.bodySmall,
      trailing: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      shape: Border(
        bottom: BorderSide(
          color: Theme.of(context).colorScheme.inverseSurface,
          width: 1,
        ),
      ),
    );
  }
}
