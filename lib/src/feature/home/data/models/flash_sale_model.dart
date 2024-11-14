

import 'package:ecommerce_app/src/feature/home/data/models/flash_item_model.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/flash_sale.dart';

class FlashSaleModel extends FlashSale{

  const FlashSaleModel({
    required super.id,
    required super.name,
    required super.startDate,
    required super.endDate,
    required super.flashItems,
  });

  factory FlashSaleModel.fromJson(Map<String, dynamic> json){
    return FlashSaleModel(
      id: json['id'],
      name: json['title'],
      startDate: json['start_time'],
      endDate: json['end_time'],
      flashItems: (json['flashsaleitems'] as List<dynamic>)
          .map((item) => FlashItemModel.fromJson(item))
          .toList(),
    );
  }

  // Empty constructor
  FlashSaleModel.empty()
      : super(
          id: '',
          name: '',
          startDate: DateTime.now().toString(),
          endDate: DateTime.now().toString(),
          flashItems: [],
        );

  @override
  List<Object?> get props => [id, name, startDate, endDate, flashItems];
}