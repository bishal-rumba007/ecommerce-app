import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ecommerce_app/src/core/routes/app_route.dart';
import 'package:ecommerce_app/src/core/theme/app_theme.dart';
import 'package:ecommerce_app/src/core/utils/text_scaler.dart';
import 'package:ecommerce_app/src/feature/address/presentation/bloc/address_bloc.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/password_management/password_management_bloc.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/bloc/category_bloc.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/cubit/selected_category_cubit.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/bloc/check_out_bloc.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/bloc/filter_bloc.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/cubit/attribute_cubit.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/slider/sliders_bloc.dart';
import 'package:ecommerce_app/src/feature/order/presentation/bloc/order_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_detail/product_detail_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/cubit/product_stock_cubit.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:ecommerce_app/src/feature/search/presentation/bloc/search_product_bloc.dart';
import 'package:ecommerce_app/src/feature/search/presentation/cubit/search_history_cubit.dart';
import 'package:ecommerce_app/src/feature/wishlist/presentation/bloc/wish_list_bloc.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';
import 'package:ecommerce_app/src/shared/bloc/user_bloc/user_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<CountryBloc>()..add(const FetchedCountryPreference())),
        BlocProvider(create: (_) => sl<AuthBloc>()),
        BlocProvider(create: (_) => sl<PasswordManagementBloc>()),
        BlocProvider(create: (_) => sl<ProfileBloc>()),
        BlocProvider(create: (_) => sl<UserBloc>()),
        BlocProvider(create: (_) => sl<SlidersBloc>()),
        BlocProvider(create: (_) => sl<CategoryBloc>()),
        BlocProvider(create: (_) => sl<SelectedCategoryCubit>()),
        BlocProvider(create: (_) => sl<ProductBloc>()),
        BlocProvider(create: (_) => sl<FilterBloc>()..add(const LoadFilters())),
        BlocProvider(create: (_) => sl<AttributeCubit>()),
        BlocProvider(create: (_) => sl<SearchProductBloc>()),
        BlocProvider(create: (_) => sl<SearchHistoryCubit>()),
        BlocProvider(create: (_) => sl<ProductDetailBloc>()),
        BlocProvider(create: (_) => sl<CartBloc>()..add(CartEvent.cartFetched(""))),
        BlocProvider(create: (_) => sl<AddressBloc>()..add(const AddressEvent.fetchedAddress())),
        BlocProvider(create: (_) => sl<CheckOutBloc>()),
        BlocProvider(create: (_) => sl<OrderBloc>()),
        BlocProvider(create: (_) => sl<WishListBloc>()),
        BlocProvider(create: (_) => sl<ProductStockCubit>()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        supportedLocales: L10n.all,
        locale: const Locale('en', 'US'),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: (context, child) {
          final MediaQueryData data = MediaQuery.of(context);
          ScreenUtil.init(context, designSize: const Size(390, 844));
          return MediaQuery(
            data: data.copyWith(
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context))),
            child: Theme(
              data: TAppTheme.lightTheme,
              child: child!,
            ),
          );
        },
      ),
    );
  }
}
