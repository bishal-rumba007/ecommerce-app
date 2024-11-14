import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/add_wish_list_usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/clear_wish_list_usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/delete_wish_list_item_usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/get_wish_list_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

part 'wish_list_bloc.freezed.dart';
part 'wish_list_event.dart';
part 'wish_list_state.dart';

class WishListBloc extends Bloc<WishListEvent, WishListState> {
  final AddWishListUsecase addWishListUsecase;
  final GetWishListUsecase getWishListUsecase;
  final DeleteWishListItemUsecase deleteWishListItemUsecase;
  final ClearWishListUsecase clearWishListUsecase;
  WishListBloc({
    required this.addWishListUsecase,
    required this.getWishListUsecase,
    required this.deleteWishListItemUsecase,
    required this.clearWishListUsecase,
  }) : super(_Initial()) {
    on<_AddedToWishList>(_onAddedToWishList);
    on<_FetchedWishList>(_onFetchedWishList);
    on<_DeletedWishListItem>(_onDeletedWishListItem);
    on<_ClearedWishList>(_onClearedWishList);
  }

  Future<void> _onAddedToWishList(
    _AddedToWishList event,
    Emitter<WishListState> emit,
  ) async {
    emit(WishListState.loading());
    final response = await addWishListUsecase.call(event.params);

    response.fold(
      (exception) {
        emit(WishListState.error(exception));
      },
      (wishList) {
        emit(WishListState.loaded(wishList));
      },
    );
  }

  Future<void> _onFetchedWishList(
    _FetchedWishList event,
    Emitter<WishListState> emit,
  ) async {
    emit(WishListState.loading());
    final response = await getWishListUsecase.call(event.countryName);

    response.fold(
      (exception) {
        emit(WishListState.error(exception));
      },
      (wishList) {
        emit(WishListState.loaded(wishList));
      },
    );
  }

  Future<void> _onDeletedWishListItem(
    _DeletedWishListItem event,
    Emitter<WishListState> emit,
  ) async {
    emit(WishListState.loading());
    final response = await deleteWishListItemUsecase.call(DeleteWishListItemParams(event.wishListId, event.wishListItemId));

    response.fold(
      (exception) {
        emit(WishListState.error(exception));
      },
      (wishList) {
        emit(WishListState.loaded(wishList));
      },
    );
  }

  Future<void> _onClearedWishList(
    _ClearedWishList event,
    Emitter<WishListState> emit,
  ) async {
    emit(WishListState.loading());
    final response = await clearWishListUsecase.call(event.wishListId);

    response.fold(
      (exception) {
        emit(WishListState.error(exception));
      },
      (wishList) {
        emit(WishListState.loaded(null));
      },
    );
  }
}
