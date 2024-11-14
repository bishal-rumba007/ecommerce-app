

import 'package:ecommerce_app/src/feature/categories/domain/entities/sub_category.dart';

class SubcategoryModel extends SubCategory{

  const SubcategoryModel({
    required super.id,
    required super.name,
    required super.image,
    required super.slug,
  });

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) {
    return SubcategoryModel(
      id: (json['id']).toString(),
      name: json['sub_category_name'],
      image: json['image'],
      slug: json['sub_category_slug'],
    );
  }

  @override
  List<Object?> get props => [id, name, image, slug];
}