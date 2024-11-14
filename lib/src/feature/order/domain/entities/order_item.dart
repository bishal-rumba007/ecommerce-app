import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';

class OrderItem extends Equatable {
  final String id;
  final int qunatity;
  final double price;
  final String imageUrl;
  final ProductStock productStock;

  const OrderItem({
    required this.id,
    required this.qunatity,
    required this.price,
    required this.imageUrl,
    required this.productStock,
  });
  
  @override
  List<Object> get props => [id, qunatity, price, imageUrl, productStock];
}
