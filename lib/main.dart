import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ecommerce_app/src/app/main_app.dart';
import 'package:ecommerce_app/src/core/utils/observer.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// Load .env file that contains Stripe key
  await dotenv.load(fileName: "assets/.env");
  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY']!;
  await Stripe.instance.applySettings();
  await Hive.initFlutter();
  await Hive.openBox<String>('searchResultBox');
  await ScreenUtil.ensureScreenSize();
  await setUpServiceLocator();
  if (kDebugMode) {
    Bloc.observer = AppBlocObserver();
  }
  runApp(const MainApp());
}