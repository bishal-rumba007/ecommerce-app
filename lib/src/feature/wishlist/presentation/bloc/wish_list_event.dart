part of 'wish_list_bloc.dart';

@freezed
class WishListEvent with _$WishListEvent {
  const factory WishListEvent.addedToWishList(
    AddWishListParams params,
  ) = _AddedToWishList;

  const factory WishListEvent.fetchedWishList(String? countryName) = _FetchedWishList;

  const factory WishListEvent.deletedWishListItem(String wishListId, String wishListItemId) = _DeletedWishListItem;
  const factory WishListEvent.clearedWishList(String wishListId) = _ClearedWishList;
}