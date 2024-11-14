import 'package:ecommerce_app/src/feature/wishlist/data/models/wish_list_item_model.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list.dart';

class WishListModel extends WishList {

  const WishListModel({
    required super.wishListId,
    required super.customerId,
    required super.countryId,
    required super.wishListItems,
  });


  factory WishListModel.fromJson(Map<String, dynamic> json) {
    return WishListModel(
      wishListId: json['id'],
      customerId: json['customer'],
      countryId: json['country'],
      wishListItems: (json['wishlistitems'] as List).map((e) => WishListItemModel.fromJson(e)).toList(),
    );
  }


  @override
  List<Object> get props => [wishListId, customerId, countryId, wishListItems];
}
