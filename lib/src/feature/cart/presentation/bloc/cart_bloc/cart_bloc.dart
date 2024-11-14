import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_request.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/clear_cart_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/get_cart_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/remove_cart_item_usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/usecases/update_cart_item_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final AddToCartUsecase addToCartUsecase;
  final GetCartUsecase getCartUsecase;
  final UpdateCartItemUsecase updateCartItemUsecase;
  final RemoveCartItemUsecase removeCartItemUsecase;
  final ClearCartUsecase clearCartUsecase;
  CartBloc({
    required this.addToCartUsecase,
    required this.getCartUsecase,
    required this.updateCartItemUsecase,
    required this.removeCartItemUsecase,
    required this.clearCartUsecase,
  }) : super(CartState()) {
    on<_CartAdded>(_onCartAdded);
    on<_CartFetched>(_onCartFetched);
    on<_CartUpdated>(_onCartItemUpdated);
    on<_CartRemoved>(_onCartItemRemoved);
    on<_CartCleared>(_onCartCleared);
  }

  Future<void> _onCartAdded(
    _CartAdded event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(status: CartStatus.loading));
    final response = await addToCartUsecase.call(
      AddToCartParams(
        countryId: event.countryId,
        cartRequests: event.cartRequest,
      ),
    );

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: CartStatus.error, message: exception.message));
      },
      (cart) {
        emit(state.copyWith(
            status: CartStatus.loaded,
            cart: cart,
            message: "Item added to cart successfully"));
      },
    );
  }

  /// This method is used to fetch the cart from the server
  Future<void> _onCartFetched(
      _CartFetched event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: CartStatus.loading));
    final response = await getCartUsecase.call(event.countryName);

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: CartStatus.error,
            message: exception.message,
            appException: exception));
      },
      (cart) {
        emit(state.copyWith(status: CartStatus.loaded, cart: cart));
      },
    );
  }

  /// This method is used to update the cart [quantity] and [price]
  /// and update the cart state accordingly based on the response
  Future<void> _onCartItemUpdated(
    _CartUpdated event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(status: CartStatus.loading));
    final response = await updateCartItemUsecase.call(
      UpdateCartItemParams(
        cartId: event.cartId,
        cartRequests: event.cartRequest,
      ),
    );

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: CartStatus.error, message: exception.message));
      },
      (cart) {
        emit(
          state.copyWith(
              status: CartStatus.loaded,
              cart: cart,
              message: "Cart updated successfully"),
        );
      },
    );
  }

  /// This method is used to remove an item from the cart
  /// and update the cart state accordingly based on the response
  /// from the usecase.
  Future<void> _onCartItemRemoved(
    _CartRemoved event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(status: CartStatus.loading));
    final response = await removeCartItemUsecase.call(
      RemoveCartParams(event.cartId, event.cartItemId),
    );

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: CartStatus.error, message: exception.message));
      },
      (cart) {
        emit(
          state.copyWith(
            status: CartStatus.loaded,
            cart: cart,
            message: "Item removed successfully",
          ),
        );
      },
    );
  }

  /// This method is used to clear the cart and update the cart state to null
  /// because the cart is empty at this point.
  Future<void> _onCartCleared(
    _CartCleared event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(status: CartStatus.loading));
    final response = await clearCartUsecase.call(event.cartId);

    response.fold(
      (exception) {
        emit(state.copyWith(
            status: CartStatus.error, message: exception.message));
      },
      (message) {
        emit(state.copyWith(
            status: CartStatus.loaded, cart: null, message: message));
      },
    );
  }
}
