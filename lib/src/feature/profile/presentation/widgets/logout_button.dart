import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/widgets/build_button.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/auth_bloc.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return ListTile(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return logOutDialog(context);
            },
          );
        },
        leading: CircleAvatar(
          radius: 18,
          backgroundColor: AppColor.containerRed.withOpacity(0.15),
          child: const Icon(
            Icons.logout,
            color: AppColor.containerRed,
            size: 18,
          ),
        ),
        title: const Text("Logout"),
        titleTextStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: AppColor.containerRed,
            ),
      );
    });
  }

  Widget logOutDialog(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Logout!",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Are you sure you want to logout?',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: BuildOutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  buttonStyle: ButtonStyle(
                      padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 8),
                  )),
                  buttonWidget: const Text('Cancel'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 2,
                child: BuildButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const LogoutRequested());
                    context.go('/login');
                  },
                  buttonStyle: ButtonStyle(
                    minimumSize: const WidgetStatePropertyAll(
                      Size(100, 40),
                    ),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                  buttonWidget: const Text('Logout'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
