import 'package:flutter/widgets.dart';

Widget slideUpTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  const begin = Offset(0.0, 0.2);
  const end = Offset(0.0, 0.0);
  const curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var offsetAnimation = animation.drive(tween);

  var fadeTween = Tween(begin: 0.8, end: 1.0).chain(CurveTween(curve: curve));
  var fadeAnimation = animation.drive(fadeTween);

  return SlideTransition(
    position: offsetAnimation,
    child: FadeTransition(
      opacity: fadeAnimation,
      child: child,
    ),
  );
}

Widget moveInFromRightTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  const begin = Offset(0.6, 0.0);
  const end = Offset(0.0, 0.0);
  const curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var offsetAnimation = animation.drive(tween);

  return SlideTransition(
    position: offsetAnimation,
    child: child,
  );
}
