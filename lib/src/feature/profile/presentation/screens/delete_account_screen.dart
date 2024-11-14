import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/bloc/profile_bloc.dart';

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  final List<String> bulletPoints = [
    'All your data will be lost.',
    'You will not be able to recover your account.',
    'You will not be able to recover your saved products.',
  ];
  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (message) {
            SnackBars.showSuccessSnackBar(message);
            context.go('/login');
          },
          failure: (message) {
            SnackBars.showErrorSnackBar(message);
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Delete Account"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Account Delete Warning!',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildBulletPoints(),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Enter password to delete your account',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BuildPasswordTextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  _buildDeleteButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDeleteButton() {
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
                  showDialog(
                    context: context,
                    builder: (context) => deleteDialog(context),
                  );
                }
              },
              buttonStyle: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10),
                ),
              ),
              buttonWidget: const Text('Delete Account'),
            );
          },
        );
      },
    );
  }

  Widget buildBulletPoints() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: bulletPoints
          .map((e) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "\u2022",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      e,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),
                  )
                ],
              ))
          .toList(),
    );
  }

  Widget deleteDialog(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Account Delete!",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Are you sure?',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'This action cannot be undone. All your data will be lost.',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
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
                    context
                        .read<ProfileBloc>()
                        .add(DeleteUser(password: _passwordController.text));
                    Navigator.pop(context);
                  },
                  buttonStyle: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red),
                    minimumSize: const WidgetStatePropertyAll(
                      Size(100, 40),
                    ),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                  buttonWidget: const Text('Yes'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
