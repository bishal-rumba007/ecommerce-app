import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/address/domain/entities/delivery_address.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/current_password_screen.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/forgot_password_verification_screen.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/otp_screen.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/password_recovery_screen.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/password_reset_success_screen.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/profile_setup_screen.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/reset_password_screen.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/screens/cart_screen.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/sub_category.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/screens/filter_screen.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/screens/product_category_screen.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_result.dart';
import 'package:ecommerce_app/src/feature/product/presentation/screens/product_description_screen.dart';
import 'package:ecommerce_app/src/feature/product/presentation/screens/product_detail_screen.dart';
import 'package:ecommerce_app/src/feature/order/presentation/screens/order_detail_screen.dart';
import 'package:ecommerce_app/src/feature/order/presentation/screens/order_filter.dart';
import 'package:ecommerce_app/src/feature/order/presentation/screens/order_screen.dart';
import 'package:ecommerce_app/src/feature/payment/presentation/screens/add_payment_card_screen.dart';
import 'package:ecommerce_app/src/feature/payment/presentation/screens/payment_screen.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/screens/payment_summary_screen.dart';
import 'package:ecommerce_app/src/feature/product/presentation/screens/category_product_screen.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/screens/account_screen.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/screens/change_password_screen.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/screens/delete_account_screen.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/screens/help_screen.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/screens/profile_edit_screen.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/screens/profile_screen.dart';
import 'package:ecommerce_app/src/feature/address/presentation/screens/address_screen.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/screens/checkout_screen.dart';
import 'package:ecommerce_app/src/feature/address/presentation/screens/create_address_screen.dart';
import 'package:ecommerce_app/src/feature/review/presentation/screens/product_review_screen.dart';
import 'package:ecommerce_app/src/feature/product/presentation/screens/product_view_screen.dart';
import 'package:ecommerce_app/src/feature/home/presentation/screens/home_screen.dart';
import 'package:ecommerce_app/src/feature/review/presentation/screens/product_not_purchase_screen.dart';
import 'package:ecommerce_app/src/feature/review/presentation/screens/review_screen.dart';
import 'package:ecommerce_app/src/feature/scaffold_nested_navigation.dart';
import 'package:ecommerce_app/src/feature/search/presentation/screens/product_search_screen.dart';
import 'package:ecommerce_app/src/feature/splash/presentation/splash_screen.dart';
import 'package:ecommerce_app/src/feature/wallet/presentation/screens/wallet_screen.dart';
import 'package:ecommerce_app/src/feature/wishlist/presentation/screens/wishlist_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

/// <-- used for the parent navigation stack
final _homeNavigatorKey = GlobalKey<NavigatorState>();
final _categoriesNavigatorKey = GlobalKey<NavigatorState>();
final _profileNavigatorKey = GlobalKey<NavigatorState>();
final _cartNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/splash',
  // initialLocation: '/product-detail',
  routes: <RouteBase>[
    /// Persistent bottom navigation bar with nested routing inside categories (Leads to product view)
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(navigatorKey: _homeNavigatorKey, routes: [
          GoRoute(
              path: '/home',
              pageBuilder: (context, state) =>
                  const MaterialPage(child: HomeScreen()),
              routes: [
                GoRoute(
                    path: 'category-product',
                    builder: (context, state) {
                      final category = state.extra as Category;
                      return CategoryProductScreen(
                        category: category,
                      );
                    }),
              ]),
        ]),
        StatefulShellBranch(navigatorKey: _categoriesNavigatorKey, routes: [
          GoRoute(
              path: '/categories',
              pageBuilder: (context, state) => const NoTransitionPage(
                    child: ProductCategoryScreen(),
                  ),
              routes: [
                GoRoute(
                    path: 'product-view',
                    builder: (context, state) {
                      final subCategory = state.extra as SubCategory;
                      return ProductViewScreen(
                        subCategory: subCategory,
                      );
                    }),
              ]),
        ]),
        StatefulShellBranch(navigatorKey: _profileNavigatorKey, routes: [
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) =>
                const MaterialPage(child: ProfileScreen()),
          ),
        ]),
        StatefulShellBranch(navigatorKey: _cartNavigatorKey, routes: [
          GoRoute(
              path: '/cart',
              pageBuilder: (context, state) {
                final country = state.extra as String?;
                return CustomTransitionPage(
                  child: CartScreen(
                    selectedCountry: country,
                  ),
                  transitionsBuilder: slideUpTransition,
                );
              }),
        ]),
      ],
    ),

    GoRoute(
      path: '/splash',
      pageBuilder: (context, state) =>
          const MaterialPage(child: SplashScreen()),
    ),

    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => const MaterialPage(child: LoginScreen()),
    ),
    GoRoute(
      path: '/signup',
      pageBuilder: (context, state) =>
          const MaterialPage(child: SignUpScreen()),
    ),
    GoRoute(
        path: '/profile-setup',
        pageBuilder: (context, state) {
          final Map<String, dynamic> queryParameters =
              state.extra as Map<String, dynamic>;
          return MaterialPage(
            child: ProfileSetUpScreen(
              registerInfo: queryParameters,
            ),
          );
        }),
    GoRoute(
        path: '/otp',
        pageBuilder: (context, state) {
          final message = state.extra as String;
          return MaterialPage(
            child: OTPScreen(message: message),
          );
        }),
    GoRoute(
        path: '/password-recovery',
        pageBuilder: (context, state) =>
            const MaterialPage(child: PasswordRecoverScreen()),
        routes: [
          GoRoute(
              path: 'verify-otp',
              pageBuilder: (context, state) {
                final message = state.extra as String;
                return MaterialPage(
                  child: ForgotPasswordOTPVerificationScreen(message: message),
                );
              }),
        ]),
    GoRoute(
      path: '/current-password',
      pageBuilder: (context, state) =>
          const MaterialPage(child: CurrentPasswordScreen()),
    ),
    GoRoute(
      path: '/reset-password',
      pageBuilder: (context, state) {
        final uid = state.extra as int;
        return MaterialPage(
            child: ResetPasswordScreen(
          userId: uid,
        ));
      },
    ),
    GoRoute(
      path: '/change-password',
      pageBuilder: (context, state) {
        final pwd = state.extra as String;
        return MaterialPage(
            child: ChangePasswordScreen(
          currentPassword: pwd,
        ));
      },
    ),
    GoRoute(
      path: '/password-success',
      pageBuilder: (context, state) =>
          const MaterialPage(child: ResetPasswordSuccessScreen()),
    ),

    GoRoute(
        path: '/filter',
        pageBuilder: (context, state) {
          final data = state.extra as Map<String, String?>;
          return CustomTransitionPage(
            child: FilterScreen(
              subCategory: data['subCategory']!,
              selectedCountry: data['selectedCountry'],
            ),
            transitionsBuilder: slideUpTransition,
          );
        }),

    GoRoute(
      path: "/account",
      pageBuilder: (context, state) =>
          const MaterialPage(child: AccountScreen()),
    ),

    GoRoute(
        path: '/edit-profile',
        pageBuilder: (context, state) {
          final user = state.extra as User;
          return MaterialPage(
            child: ProfileEditScreen(user: user),
          );
        }),

    GoRoute(
      path: '/product-detail/:prodSlug',
      pageBuilder: (context, state) {
        String productSlug = state.pathParameters['prodSlug']!;
        String? country = state.extra as String?;
        return MaterialPage<void>(
          child: ProductDetailScreen(
            productSlug: productSlug,
            selectedCountry: country,
          ),
        );
      },
    ),
    GoRoute(
      path: '/product-description',
      pageBuilder: (context, state) {
        final Map<String, dynamic> data = state.extra as Map<String, dynamic>;
        return CustomTransitionPage(
          child: ProductDescriptionScreen(
            selectedProductStock: data['selectedProductStock'],
            productDetail: data['productDetail'],
            productDescription: data['productDescription'],
            quantity: data['quantity'],
          ),
          transitionsBuilder: slideUpTransition,
        );
      },
    ),
    GoRoute(
      path: '/product-review',
      pageBuilder: (context, state) =>
          const MaterialPage(child: ProductReviewScreen()),
    ),
    GoRoute(
      path: '/product-not-purchased',
      pageBuilder: (context, state) =>
          const MaterialPage(child: ProductNotPurchasedScreen()),
    ),
    GoRoute(
      path: '/review',
      pageBuilder: (context, state) =>
          const MaterialPage(child: ReviewScreen()),
    ),

    /// Purchase routes
    GoRoute(
      path: '/checkout',
      pageBuilder: (context, state) =>
          const MaterialPage(child: CheckOutScreen()),
    ),
    GoRoute(
      path: "/address",
      pageBuilder: (context, state) =>
          const MaterialPage(child: AddressScreen()),
    ),
    GoRoute(
      path: "/create-address",
      pageBuilder: (context, state) {
        final deliveryAddress = state.extra as DeliveryAddress?;
        return MaterialPage(
          child: CreateAddressScreen(
            address: deliveryAddress,
          ),
        );
      },
    ),

    /// Payment Routes
    GoRoute(
      path: '/payment',
      pageBuilder: (context, state) =>
          const MaterialPage(child: PaymentScreen()),
    ),
    GoRoute(
      path: '/add-payment-card',
      pageBuilder: (context, state) =>
          const MaterialPage(child: AddPaymentCardScreen()),
    ),

    GoRoute(
        path: '/payment-summary',
        pageBuilder: (context, state) {
          final orderResult = state.extra as OrderResult;
          return CustomTransitionPage(
            child: PaymentSummaryScreen(
              orderResult: orderResult,
            ),
            transitionsBuilder: moveInFromRightTransition,
          );
        }),

    /// Order
    GoRoute(
      path: '/orders',
      pageBuilder: (context, state) => const MaterialPage(child: OrderScreen()),
    ),

    GoRoute(
      path: "/order-filter",
      pageBuilder: (context, state) =>
          const MaterialPage(child: OrderFilterScreen()),
    ),

    GoRoute(
      path: "/order-detail",
      pageBuilder: (context, state) =>
          const MaterialPage(child: OrderDetailScreen()),
    ),

    /// Wallet
    GoRoute(
      path: '/wallet',
      pageBuilder: (context, state) =>
          const MaterialPage(child: WalletScreen()),
    ),

    ///Help route
    GoRoute(
      path: '/help',
      pageBuilder: (context, state) => const MaterialPage(child: HelpScreen()),
    ),

    ///Wish list
    GoRoute(
      path: '/wishlist',
      pageBuilder: (context, state) =>
          const MaterialPage(child: WishListScreen()),
    ),
    GoRoute(
      path: '/delete-account',
      pageBuilder: (context, state) =>
          const MaterialPage(child: DeleteAccountScreen()),
    ),

    // Search Product
    GoRoute(
      path: '/search-product',
      pageBuilder: (context, state) => CustomTransitionPage(
        child: ProductSearchScreen(),
        transitionsBuilder: slideUpTransition,
      ),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage<void>(
    child: Scaffold(
      body: Center(
        child: Text('Page not found: ${state.error}'),
      ),
    ),
  ),
);
