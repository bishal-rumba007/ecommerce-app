

import 'package:equatable/equatable.dart';

class ProductAttribute extends Equatable{
  final String id;
  final String name;
  final String value;

  const ProductAttribute({
    required this.id,
    required this.name,
    required this.value,
  });

  ProductAttribute.copy(ProductAttribute attribute)
      : id = attribute.id,
        name = attribute.name,
        value = attribute.value;

  @override
  List<Object?> get props => [id, name, value];
}