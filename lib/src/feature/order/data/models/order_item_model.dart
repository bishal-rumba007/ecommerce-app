import 'package:ecommerce_app/src/feature/order/domain/entities/order_item.dart';
import 'package:ecommerce_app/src/feature/product/data/models/product_stock_model.dart';

class OrderItemModel extends OrderItem {

  const OrderItemModel({
    required super.id,
    required super.qunatity,
    required super.price,
    required super.imageUrl,
    required super.productStock,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) {
    return OrderItemModel(
      id: json['id'] as String,
      qunatity: json['quantity'] as int,
      price: json['price'] as double,
      imageUrl: json['imageurl'] as String,
      productStock: ProductStockModel.fromJson(json['productstock']),
    );
  }
}
