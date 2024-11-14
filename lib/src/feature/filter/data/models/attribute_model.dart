

import 'package:ecommerce_app/src/feature/filter/domain/entities/attribute.dart';

class AttributeModel extends Attribute{

  const AttributeModel({
    required super.id,
    required super.attributeName,
    required super.values,
  });

  factory AttributeModel.fromJson(Map<String, dynamic> json) {
    return AttributeModel(
      id: json['id'],
      attributeName: json['name'],
      values: (json['values']) != null ?
        (json['values'] as List).map((e) => e["value"] as String).toList()
       : [],
    );
  }
}