

import 'package:ecommerce_app/src/feature/product/data/models/product_model.dart';
import 'package:ecommerce_app/src/feature/search/domain/entities/search_result.dart';

class SearchResultModel extends SearchResult {
  const SearchResultModel({
    required super.products,
    required super.totalItems,
    required super.totalPages,
  });

  factory SearchResultModel.fromJson(Map<String, dynamic> json) {
    return SearchResultModel(
      products: (json['results'] as List).map((job) => ProductModel.fromJson(job)).toList(),
      totalItems: json["total_items"],
      totalPages: json["total_pages"],
    );
  }
}
