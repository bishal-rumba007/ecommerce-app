import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';

class SearchResult extends Equatable {
  final int totalPages;
  final int totalItems;
  final List<Product> products;

  const SearchResult({
    required this.totalPages,
    required this.totalItems,
    required this.products,
  });
  
  @override
  List<Object?> get props => [totalPages, totalItems, products];
}
