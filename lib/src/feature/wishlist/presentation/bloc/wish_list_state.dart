part of 'wish_list_bloc.dart';

@freezed
class WishListState with _$WishListState {
  const factory WishListState.initial() = _Initial;
  const factory WishListState.loading() = _Loading;
  const factory WishListState.loaded(WishList? wishList) = _Loaded;
  const factory WishListState.error(AppException appException) = _Error;
}
