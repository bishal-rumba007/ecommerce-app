import 'package:ecommerce_app/src/feature/product/domain/entities/product_attribute.dart';

class ProductAttributeModel extends ProductAttribute {
  const ProductAttributeModel({
    required super.id,
    required super.name,
    required super.value,
  });

  factory ProductAttributeModel.fromJson(Map<String, dynamic> json) {
    return ProductAttributeModel(
      id: json['id'],
      name: json['attribute_name'],
      value: json['value'],
    );
  }
}
