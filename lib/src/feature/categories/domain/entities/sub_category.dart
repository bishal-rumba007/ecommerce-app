

import 'package:equatable/equatable.dart';

class SubCategory extends Equatable {
  final String id;
  final String name;
  final String image;
  final String slug;

  const SubCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.slug,
  });

  @override
  List<Object?> get props => [id, name, image, slug];
}