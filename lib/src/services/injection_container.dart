import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ecommerce_app/src/feature/address/data/datasource/remote/address_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/address/data/repositories/address_repo_impl.dart';
import 'package:ecommerce_app/src/feature/address/domain/repositories/address_repository.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/add_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/delete_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/get_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/feature/address/domain/usecases/update_delivery_address_usecase.dart';
import 'package:ecommerce_app/src/feature/address/presentation/bloc/address_bloc.dart';
import 'package:ecommerce_app/src/feature/auth/data/datasource/remote/auth_datasource.dart';
import 'package:ecommerce_app/src/feature/auth/data/datasource/remote/password_datasource.dart';
import 'package:ecommerce_app/src/feature/auth/data/repositories/auth_repository_impl.dart';
import 'package:ecommerce_app/src/feature/auth/data/repositories/password_repository_impl.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/password_repository.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/forgot_password_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/google_sign_in_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/logout_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/otp_resend_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/otp_verify_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/register_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/resend_otp_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/reset_password_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/password_management/password_management_bloc.dart';
import 'package:ecommerce_app/src/feature/cart/data/datasource/remote/cart_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/cart/data/repsitories/cart_repository_impl.dart';
import 'package:ecommerce_app/src/feature/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/clear_cart_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/get_cart_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/remove_cart_item_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/update_cart_item_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/src/feature/categories/data/datasource/category_datasource.dart';
import 'package:ecommerce_app/src/feature/categories/data/repositories/category_repo_impl.dart';
import 'package:ecommerce_app/src/feature/categories/domain/repositories/category_repository.dart';
import 'package:ecommerce_app/src/feature/categories/domain/usecases/get_categories_usecase.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/bloc/category_bloc.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/cubit/selected_category_cubit.dart';
import 'package:ecommerce_app/src/feature/checkout/data/datasource/check_out_datasource.dart';
import 'package:ecommerce_app/src/feature/checkout/data/repositories/check_out_repo_impl.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/repositories/checkout_repository.dart';
import 'package:ecommerce_app/src/feature/checkout/domain/usecases/checkout_usecase.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/bloc/check_out_bloc.dart';
import 'package:ecommerce_app/src/feature/country/data/datasource/local/country_local_datasource.dart';
import 'package:ecommerce_app/src/feature/country/data/repositories/country_pref_repo_impl.dart';
import 'package:ecommerce_app/src/feature/country/domain/repositories/country_preference_repository.dart';
import 'package:ecommerce_app/src/feature/country/domain/usecase/get_selected_country_usecase.dart';
import 'package:ecommerce_app/src/feature/country/domain/usecase/set_selected_country_usecase.dart';
import 'package:ecommerce_app/src/feature/country/presentation/bloc/country_bloc.dart';
import 'package:ecommerce_app/src/feature/filter/data/datasource/remote/filter_datasource.dart';
import 'package:ecommerce_app/src/feature/filter/data/repositories/filter_repo_impl.dart';
import 'package:ecommerce_app/src/feature/filter/domain/repositories/filter_repository.dart';
import 'package:ecommerce_app/src/feature/filter/domain/usecases/get_filter_attributes_usecase.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/bloc/filter_bloc.dart';
import 'package:ecommerce_app/src/feature/filter/presentation/cubit/attribute_cubit.dart';
import 'package:ecommerce_app/src/feature/home/data/datasource/flash_sale_datasource.dart';
import 'package:ecommerce_app/src/feature/home/data/datasource/slider_datasource.dart';
import 'package:ecommerce_app/src/feature/home/data/repositories/flash_sale_repo_impl.dart';
import 'package:ecommerce_app/src/feature/home/data/repositories/slider_repo_impl.dart';
import 'package:ecommerce_app/src/feature/home/domain/repositories/flash_sale_repository.dart';
import 'package:ecommerce_app/src/feature/home/domain/repositories/slider_repository.dart';
import 'package:ecommerce_app/src/feature/home/domain/usecases/get_banner_usecase.dart';
import 'package:ecommerce_app/src/feature/home/domain/usecases/get_bottom_banner_usecase.dart';
import 'package:ecommerce_app/src/feature/home/domain/usecases/get_flash_sale_usecase.dart';
import 'package:ecommerce_app/src/feature/home/domain/usecases/get_slider_image_usecase.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/flash_sale/bloc/flash_sale_bloc.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/slider/sliders_bloc.dart';
import 'package:ecommerce_app/src/feature/order/data/datasources/order_data_source.dart';
import 'package:ecommerce_app/src/feature/order/data/repositories/order_repo_impl.dart';
import 'package:ecommerce_app/src/feature/order/domain/repositories/order_repository.dart';
import 'package:ecommerce_app/src/feature/order/domain/usecases/create_order_usecase.dart';
import 'package:ecommerce_app/src/feature/order/domain/usecases/get_order_usecase.dart';
import 'package:ecommerce_app/src/feature/order/presentation/bloc/order_bloc.dart';
import 'package:ecommerce_app/src/feature/product/data/datasource/product_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/product/data/repositories/product_repo_impl.dart';
import 'package:ecommerce_app/src/feature/product/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/src/feature/product/domain/usecases/get_category_product_usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/usecases/get_product_detail_usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/usecases/get_products_usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/usecases/get_sub_category_product_list_usecase.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/bloc/product_detail/product_detail_bloc.dart';
import 'package:ecommerce_app/src/feature/product/presentation/cubit/product_stock_cubit.dart';
import 'package:ecommerce_app/src/feature/profile/data/datasource/profile_datasource.dart';
import 'package:ecommerce_app/src/feature/profile/data/respositories/profile_repository_impl.dart';
import 'package:ecommerce_app/src/feature/profile/domain/repositories/profile_repository.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/change_password_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/delete_user_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/edit_user_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/get_user_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:ecommerce_app/src/feature/search/data/datasource/local/search_local_datasource.dart';
import 'package:ecommerce_app/src/feature/search/data/datasource/local/search_local_service.dart';
import 'package:ecommerce_app/src/feature/search/data/datasource/remote/search_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/search/data/repositories/search_repository_impl.dart';
import 'package:ecommerce_app/src/feature/search/domain/repositories/search_repository.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/clear_search_query_usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/get_search_history_usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/remove_search_query_usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/save_search_query_usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/search_products_usecase.dart';
import 'package:ecommerce_app/src/feature/search/presentation/bloc/search_product_bloc.dart';
import 'package:ecommerce_app/src/feature/search/presentation/cubit/search_history_cubit.dart';
import 'package:ecommerce_app/src/feature/wishlist/data/datasource/remote/wish_list_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/wishlist/data/repositories/wish_list_repo_impl.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/repositories/wish_list_repository.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/add_wish_list_usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/clear_wish_list_usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/delete_wish_list_item_usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/get_wish_list_usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/presentation/bloc/wish_list_bloc.dart';
import 'package:ecommerce_app/src/services/user_cache_service/data/datasource/local/user_local_datasource.dart';
import 'package:ecommerce_app/src/services/user_cache_service/data/repositories/user_repository_impl.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';
import 'package:ecommerce_app/src/shared/bloc/user_bloc/user_bloc.dart';
import 'package:ecommerce_app/src/shared/data/local/shared_preference_service.dart';
import 'package:ecommerce_app/src/shared/data/local/storage_service.dart';
import 'package:ecommerce_app/src/shared/data/local/token_storage_service.dart';
import 'package:ecommerce_app/src/shared/data/local/token_storage_service_impl.dart';
import 'package:ecommerce_app/src/shared/data/remote/dio_network_service.dart';
import 'package:ecommerce_app/src/shared/data/remote/jwt_network_service.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';

GetIt sl = GetIt.instance;

Future<void> setUpServiceLocator() async {
  sl
    ..registerFactory(
      () => AuthBloc(
          loginUsecase: sl(),
          registerUsecase: sl(),
          userRepository: sl(),
          verifyOtpUsecase: sl(),
          otpResendUsecase: sl(),
          logoutUsecase: sl(),
          googleSignInUsecase: sl()),
    )

    // Usecases
    ..registerLazySingleton(() => LoginUsecase(sl()))
    ..registerLazySingleton(() => RegisterUsecase(sl()))
    ..registerLazySingleton(() => VerifyOtpUsecase(sl()))
    ..registerLazySingleton(() => OtpResendUsecase(sl()))
    ..registerLazySingleton(() => LogoutUsecase(sl()))
    ..registerLazySingleton(() => GoogleSignInUsecase(sl()))

    // Repositories
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(authRemoteDatasource: sl()),
    )
    // Datasource
    ..registerLazySingleton<AuthRemoteDatasource>(() =>
        AuthRemoteDatasourceImpl(
          sl(),
          sl(),
          networkService: sl<NetworkService>(instanceName: 'dioNetworkService'),
        ))

    // Token Storage Service
    ..registerLazySingleton<TokenStorageService>(
      () => SecureTokenStorageService(),
    )

    // User repository and data source
    ..registerLazySingleton<UserRepository>(() => UserRepositoryImpl(sl()))
    ..registerLazySingleton<UserDataSource>(() => UserLocalDatasource(sl()))

    // User cache service
    ..registerLazySingleton<StorageService>(
      () {
        final SharedPrefsService prefsService = SharedPrefsService();
        prefsService.init();
        return prefsService;
      },
    )

    // Registering auth Dio instance
    ..registerLazySingleton<Dio>(
      () => Dio(),
      instanceName: 'authDioInstance',
    )

    // Registering auth Dio instance
    ..registerLazySingleton<Dio>(
      () => Dio(),
      instanceName: 'jwtDioInstance',
    )

    // Network Service requires Dio instance
    ..registerLazySingleton<NetworkService>(
      () => DioNetworkService(
        sl<Dio>(instanceName: 'authDioInstance'),
      ),
      instanceName: 'dioNetworkService',
    );

  sl
    ..registerFactory(() => PasswordManagementBloc(
          forgotPasswordUseCase: sl(),
          otpVerifyUsecase: sl(),
          resetPasswordUsecase: sl(),
          resendOtpUsecase: sl(),
        ))
    ..registerLazySingleton(() => ForgotPasswordUsecase(sl()))
    ..registerLazySingleton(() => OtpVerifyUsecase(sl()))
    ..registerLazySingleton(() => ResetPasswordUsecase(sl()))
    ..registerLazySingleton(() => ResendOtpUsecase(sl()))
    ..registerLazySingleton<PasswordRepository>(
        () => PasswordRepositoryImpl(passwordDatasource: sl()))
    ..registerLazySingleton<PasswordDatasource>(() => PasswordDataSourceImpl(
          networkService: sl<NetworkService>(instanceName: 'dioNetworkService'),
        ));

  sl
    ..registerFactory(
      () => ProfileBloc(
        getUserUsecase: sl(),
        editUserInfoUsecase: sl(),
        deleteUserUsecase: sl(),
        changePasswordUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => GetUserUsecase(sl()))
    ..registerLazySingleton(() => EditUserInfoUsecase(sl()))
    ..registerLazySingleton(() => DeleteUserUsecase(sl()))
    ..registerLazySingleton(() => ChangePasswordUsecase(sl()))
    ..registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImpl(sl()))
    ..registerLazySingleton<ProfileDatasource>(() => ProfileDatasourceImpl(
          networkService: sl<NetworkService>(instanceName: 'jwtNetworkService'),
          userRepository: sl(),
          tokenStorageService: sl(),
        ))

    // JwtNetworkService
    ..registerLazySingleton<NetworkService>(
      () => JwtNetworkService(
        sl(),
        sl(),
        dio: sl<Dio>(instanceName: 'jwtDioInstance'),
      ),
      instanceName: 'jwtNetworkService',
    );

  sl.registerFactory(() => UserBloc(sl()));

  // Registering Sliders and banner bloc and its dependencies
  sl
    ..registerFactory(
      () => SlidersBloc(
        getSliderUsecase: sl(),
        getBannerUsecase: sl(),
        getBottomBannerUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => GetSliderImageUsecase(sl()))
    ..registerLazySingleton(() => GetBannerUsecase(sl()))
    ..registerLazySingleton(() => GetBottomBannerUsecase(sl()))
    ..registerLazySingleton<SliderRepository>(() => SliderRepositoryImpl(sl()))
    ..registerLazySingleton<SliderDatasource>(
      () => SliderDatasourceImpl(
        networkService: sl<NetworkService>(instanceName: 'dioNetworkService'),
      ),
    );

  // Registering category, subcategory and its dependencies
  sl
    ..registerFactory(
      () => CategoryBloc(getCategoriesUsecase: sl()),
    )
    ..registerLazySingleton(() => GetCategoriesUsecase(sl()))
    ..registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImpl(sl()),
    )
    ..registerLazySingleton<CategoryDatasource>(() => CategoryDatasourceImpl(
        sl<NetworkService>(instanceName: 'dioNetworkService')));

  // Flash Sale bloc and its dependencies registration
  sl
    ..registerFactory(
      () => FlashSaleBloc(
        getFlashSaleUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => GetFlashSaleUsecase(sl()))
    ..registerLazySingleton<FlashSaleRepository>(
      () => FlashSaleRepositoryImpl(sl()),
    )
    ..registerLazySingleton<FlashSaleDatasource>(() => FlashSaleDatasourceImpl(
        sl<NetworkService>(instanceName: 'dioNetworkService')));

  // Product bloc and its dependencies registration
  sl
    ..registerFactory(
      () => ProductBloc(
        getProductsUsecase: sl(),
        getSubCategoryProductListUsecase: sl(),
        getCategoryProductUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => GetProductsUsecase(sl()))
    ..registerLazySingleton(() => GetSubCategoryProductListUsecase(sl()))
    ..registerLazySingleton(() => GetCategoryProductUsecase(sl()))
    ..registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(sl()),
    )
    ..registerLazySingleton<ProductRemoteDatasource>(
      () => ProductRemoteDatasourceImpl(
        sl<NetworkService>(instanceName: 'dioNetworkService'),
      ),
    );

  // Registering selected category cubit and its dependencies
  sl.registerFactory(() => SelectedCategoryCubit());

  // Registering the country bloc and its dependencies
  sl
    ..registerFactory(
      () => CountryBloc(
        getSelectedCountryUsecase: sl(),
        setSelectedCountryUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => GetSelectedCountryUsecase(sl()))
    ..registerLazySingleton(() => SetSelectedCountryUsecase(sl()))
    ..registerLazySingleton<CountryPreferenceRepository>(
        () => CountryPreferenceRepositoryImpl(sl()))
    ..registerLazySingleton<CountryLocalDatasource>(
        () => CountryLocalDatasourceImpl(
              sl(),
            ));

  sl
    ..registerFactory(
      () => SearchProductBloc(
        searchProductUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => SearchProductUsecase(sl()))
    ..registerLazySingleton<SearchRepository>(() => SearchRepositoryImpl(
          localDatasource: sl(),
          remoteDatasource: sl(),
        ))
    ..registerLazySingleton<SearchProductRemoteDatasource>(() =>
        SearchProductRemoteDatasourceImpl(
          networkService: sl<NetworkService>(instanceName: 'dioNetworkService'),
        ))
    ..registerLazySingleton<SearchProductLocalDatasource>(
        () => SearchProductLocalDatasourceImpl(
              sl(),
            ))
    ..registerLazySingleton<SearchResultLocalService>(
      () {
        SearchResultLocalService searchResultLocalService =
            SearchResultLocalService();
        searchResultLocalService.init();
        return searchResultLocalService;
      },
    );

  // Search history cubit and its dependencies
  // Registering the search history cubit and its dependencies
  sl
    ..registerFactory(
      () => SearchHistoryCubit(
        getSearchHistoryUsecase: sl(),
        saveSearchQueryUsecase: sl(),
        clearSearchQueryUsecase: sl(),
        removeSearchQueryUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => GetSearchHistoryUsecase(sl()))
    ..registerLazySingleton(() => SaveSearchQueryUsecase(sl()))
    ..registerLazySingleton(() => ClearSearchQueryUsecase(sl()))
    ..registerLazySingleton(() => RemoveSearchQueryUsecase(sl()));

  // Filter bloc and its dependencies registration in
  // the service locator
  sl
    ..registerFactory(
      () => FilterBloc(
        getFilterAttributesUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => GetFilterAttributesUsecase(sl()))
    ..registerLazySingleton<FilterRepository>(() => FilterRepositoryImpl(sl()))
    ..registerLazySingleton<FilterDatasource>(() => FilterDatasourceImpl(
          sl<NetworkService>(instanceName: 'dioNetworkService'),
        ));

  // Registering the attribute cubit and its dependencies
  sl.registerFactory(() => AttributeCubit());

  /// Registering the product detail bloc and its dependencies
  sl
    ..registerFactory(
      () => ProductDetailBloc(
        getProductDetailUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => GetProductDetailUsecase(sl()));

  // Registering the cart bloc and its dependencies
  sl
    ..registerFactory(
      () => CartBloc(
        addToCartUsecase: sl(),
        getCartUsecase: sl(),
        updateCartItemUsecase: sl(),
        removeCartItemUsecase: sl(),
        clearCartUsecase: sl(),
      ),
    )

    /// Registering the usecases
    ..registerLazySingleton(() => AddToCartUsecase(sl()))
    ..registerLazySingleton(() => GetCartUsecase(sl()))
    ..registerLazySingleton(() => UpdateCartItemUsecase(sl()))
    ..registerLazySingleton(() => RemoveCartItemUsecase(sl()))
    ..registerLazySingleton(() => ClearCartUsecase(sl()))

    /// Registering the repositories
    ..registerLazySingleton<CartRepository>(
      () => CartRepositoryImpl(sl()),
    )

    /// Registering the datasource
    ..registerLazySingleton<CartRemoteDatasource>(
      () => CartRemoeDatasourceImpl(
        sl<NetworkService>(instanceName: 'jwtNetworkService'),
      ),
    );

  // Registering the address bloc and its dependencies
  sl
    ..registerFactory(
      () => AddressBloc(
        addDeliveryAddressUsecase: sl(),
        getDeliveryAddressUsecase: sl(),
        updateDeliveryAddressUsecase: sl(),
        deleteDeliveryAddressUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => AddDeliveryAddressUsecase(sl()))
    ..registerLazySingleton(() => GetDeliveryAddressUsecase(sl()))
    ..registerLazySingleton(() => UpdateDeliveryAddressUsecase(sl()))
    ..registerLazySingleton(() => DeleteDeliveryAddressUsecase(sl()))
    ..registerLazySingleton<AddressRepository>(
      () => AddressRepositoryImpl(sl()),
    )
    ..registerLazySingleton<AddressRemoteDatasource>(
      () => AddressRemoteDatasourceImpl(
        sl<NetworkService>(instanceName: 'jwtNetworkService'),
      ),
    );

  /// Checkout bloc and its dependencies registration
  sl
    ..registerFactory(
      () => CheckOutBloc(
        checkoutUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => CheckoutUsecase(sl()))
    ..registerLazySingleton<CheckoutRepository>(
      () => CheckOutRepositoryImpl(sl()),
    )
    ..registerLazySingleton<CheckOutDatasource>(
      () => CheckOutDatasourceImpl(
        networkService: sl<NetworkService>(instanceName: 'jwtNetworkService'),
      ),
    );

  /// Order bloc and dependencies registration
  sl
    ..registerFactory(
      () => OrderBloc(
        createOrderUsecase: sl(),
        getOrderUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => CreateOrderUsecase(sl()))
    ..registerLazySingleton(() => GetOrderUsecase(sl()))
    ..registerLazySingleton<OrderRepository>(
      () => OrderRepositoryImpl(sl()),
    )
    ..registerLazySingleton<OrderDataSource>(
      () => OrderDataSourceImpl(
        networkService: sl<NetworkService>(instanceName: 'jwtNetworkService'),
      ),
    );

  /// WishList bloc and its dependencies registration
  sl
    ..registerFactory(
      () => WishListBloc(
        addWishListUsecase: sl(),
        getWishListUsecase: sl(),
        deleteWishListItemUsecase: sl(),
        clearWishListUsecase: sl(),
      ),
    )
    ..registerLazySingleton(() => AddWishListUsecase(sl()))
    ..registerLazySingleton(() => GetWishListUsecase(sl()))
    ..registerLazySingleton(() => DeleteWishListItemUsecase(sl()))
    ..registerLazySingleton(() => ClearWishListUsecase(sl()))
    ..registerLazySingleton<WishListRepository>(
      () => WishListRepositoryImpl(sl()),
    )
    ..registerLazySingleton<WishListRemoteDatasource>(
      () => WishListRemoteDatasourceImpl(
        sl<NetworkService>(instanceName: 'jwtNetworkService'),
      ),
    );

  /// Registering the product stock cubit and its dependencies
  sl.registerFactory(() => ProductStockCubit());

}
