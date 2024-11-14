import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/auth_bloc.dart';

class GoogleSignInButton extends StatefulWidget {
  const GoogleSignInButton({super.key});

  @override
  State<GoogleSignInButton> createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  Future<void> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: <String>[
        'email',
        'openid',
        'profile',
      ],
      serverClientId:
          dotenv.env['GOOLE_SERVER_CLIENT_ID']!.toString(),
    );
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final googleAuth = await googleSignInAccount.authentication;
        if (!mounted) return;
        context.read<AuthBloc>().add(
              GoogleSignInRequested(idToken: googleAuth.idToken!),
          );
      }
    } catch (error) {
      GoogleSignIn().signOut();
      SnackBars.showErrorSnackBar("Google Sign In Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (message) {
            SnackBars.showSuccessSnackBar(message);
            GoRouter.of(context).go('/home');
          },
          failure: (exception) {
            SnackBars.showErrorSnackBar(exception.message);
          },
          orElse: () {},
        );
      },
      child: IconButton(
        onPressed: () {
          signInWithGoogle();
        },
        icon: SvgPicture.asset(
          "assets/icons/google-logo.svg",
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
