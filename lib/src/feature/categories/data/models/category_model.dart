import 'package:ecommerce_app/src/feature/categories/data/models/subcategory_model.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';

class CategoryModel extends Category {
  const CategoryModel({
    required super.id,
    required super.name,
    required super.image,
    required super.slug,
    required super.subCategory,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: (json['id']).toString(),
      name: json['category_name'],
      image: json['category_image'],
      slug: json['category_slug'],
      subCategory: json['mainCategory'] != null
          ? (json['mainCategory'] as List)
              .map((e) => SubcategoryModel.fromJson(e))
              .toList()
          : [],
    );
  }
}
