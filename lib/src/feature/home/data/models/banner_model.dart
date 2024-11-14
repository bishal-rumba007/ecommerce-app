

import 'package:ecommerce_app/src/feature/home/domain/entities/banners.dart';

class BannerModel extends Banners{

  const BannerModel({
    required super.id,
    required super.title,
    required super.imageUrl,
    super.link,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'],
      title: json['title'],
      imageUrl: json['image'],
      link: json['link'],
    );
  }

  @override
  List<Object?> get props => [id, title, imageUrl, link];
}