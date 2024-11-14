import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookLoginButton extends StatefulWidget {
  const FacebookLoginButton({super.key});

  @override
  State<FacebookLoginButton> createState() => _FacebookLoginButtonState();
}

class _FacebookLoginButtonState extends State<FacebookLoginButton> {
  Future<void> _loginWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance
        .login(); // by default we request the email and the public profile
// or FacebookAuth.i.login()
    if (result.status == LoginStatus.success) {
      // you are logged
      // final AccessToken accessToken = result.accessToken!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _loginWithFacebook();
      },
      icon: SvgPicture.asset(
        "assets/icons/facebook-logo.svg",
        width: 32,
        height: 32,
      ),
    );
  }
}
