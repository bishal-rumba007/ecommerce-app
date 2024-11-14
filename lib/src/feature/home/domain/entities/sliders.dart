


import 'package:equatable/equatable.dart';

class Sliders extends Equatable {
  final String id;
  final String title;
  final String imageUrl;

  const Sliders({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [id, title, imageUrl];
}