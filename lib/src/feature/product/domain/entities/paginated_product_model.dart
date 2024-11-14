
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';

class PaginatedProductModel {
  final List<Product> products;
  final int totalItems;
  final int totalPages;

  PaginatedProductModel({
    required this.products,
    required this.totalItems,
    required this.totalPages,
  });
}