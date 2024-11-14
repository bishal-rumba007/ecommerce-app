


import 'package:ecommerce_app/src/feature/home/domain/entities/sliders.dart';

class SliderModel extends Sliders{

  const SliderModel({
    required super.id,
    required super.title,
    required super.imageUrl,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      id: json['id'],
      title: json['title'],
      imageUrl: json['image'],
    );
  }

  @override
  List<Object?> get props => [id, title, imageUrl];
}