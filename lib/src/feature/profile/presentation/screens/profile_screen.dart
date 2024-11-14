import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/feature/country/presentation/widgets/country_setting_tile.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/widgets/logout_button.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/widgets/profile_information_header.dart';
import 'package:ecommerce_app/src/shared/bloc/user_bloc/user_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const GetUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileInformationHeader(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildNavigationCircle(
                        context,
                        "Orders",
                        Icons.shopping_cart_outlined,
                        () {
                          context.push("/orders");
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      buildNavigationCircle(
                        context,
                        "Wishlist",
                        Icons.favorite_border,
                        () {
                          context.push("/wishlist");
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      buildNavigationCircle(
                        context,
                        "Wallet",
                        Icons.wallet,
                        () {
                          context.push("/wallet");
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      buildNavigationCircle(
                        context,
                        "Coupons",
                        Icons.card_giftcard,
                        () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Account",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  buildListTile(
                    context,
                    "Profile",
                    () {
                      context.push('/account');
                    },
                    SvgPicture.asset("assets/icons/person.svg"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildListTile(
                    context,
                    "Address",
                    () {
                      context.push('/address');
                    },
                    Icon(
                      Icons.location_on_outlined,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const CountrySettingTile(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Help & Support",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  buildListTile(
                    context,
                    "Get Help",
                    () {
                      context.push('/help');
                    },
                    Icon(
                      Icons.headphones_outlined,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  buildListTile(
                    context,
                    "FAQ",
                    () {},
                    Icon(
                      Icons.help_outline,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  const LogoutButton(),
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(BuildContext context, String title, VoidCallback onTap,
      Widget leadingWidget) {
    return ListTile(
        onTap: onTap,
        leading: leadingWidget,
        title: Text(title),
        titleTextStyle: Theme.of(context).textTheme.labelLarge,
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 16,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        shape: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.inverseSurface,
            width: 1,
          ),
        ));
  }

  Column buildNavigationCircle(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 30,
            child: Icon(
              icon,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        )
      ],
    );
  }
}
