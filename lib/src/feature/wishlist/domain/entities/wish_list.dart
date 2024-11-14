
import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list_item.dart';

class WishList extends Equatable{
  final String wishListId;
  final String countryId;
  final String customerId;
  final List<WishListItem> wishListItems;

  const WishList({
    required this.wishListId,
    required this.countryId,
    required this.customerId,
    required this.wishListItems,
  });
  
  @override
  List<Object> get props => [wishListId, countryId, customerId, wishListItems];
}