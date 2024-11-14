


import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/flash_item.dart';

class FlashSale extends Equatable{
  final String id;
  final String name;
  final String startDate;
  final String endDate;
  final List<FlashItem> flashItems;


  const FlashSale({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.flashItems,
  });

  @override
  List<Object?> get props => [id, name, startDate, endDate, flashItems];
}