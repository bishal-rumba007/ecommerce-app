import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';
import 'package:ecommerce_app/src/services/user_cache_service/data/datasource/local/user_local_datasource.dart';
import 'package:ecommerce_app/src/services/user_cache_service/data/repositories/user_repository_impl.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final UserRepository userRepo = UserRepositoryImpl(sl<UserDataSource>());
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 1800), () {
      _navigateToNextScreen();
    });
  }

  void _navigateToNextScreen() async {
    final isUserLoggedIn = await userRepo.hasUser();
    if (!mounted) return;
    if (isUserLoggedIn) {
      context.go('/home');
    } else {
      context.go('/login');
    }
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset("assets/images/star-group.svg"),
          SvgPicture.asset(
            "assets/icons/logo.svg",
            height: 180.h,
            width: 235.w,
          ),
           Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
