


import 'package:equatable/equatable.dart';

class Banners extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final String? link;

  const Banners({
    required this.id,
    required this.title,
    required this.imageUrl,
    this.link,
  });

  @override
  List<Object?> get props => [id, title, imageUrl, link];
}