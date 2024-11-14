
import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/sub_category.dart';

class Category extends Equatable {
  final String id;
  final String name;
  final String image;
  final String slug;
  final List<SubCategory> subCategory;

  const Category({
    required this.id,
    required this.name,
    required this.image,
    required this.slug,
    required this.subCategory,
  });

  @override
  List<Object?> get props => [id, name, image, slug];
}