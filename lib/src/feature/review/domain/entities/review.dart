import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';

class Review extends Equatable {
  final String reviewId;
  final User? user;
  final String review;
  final double rating;
  final String createdAt;

  const Review({
    required this.reviewId,
    this.user,
    required this.review,
    required this.rating,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [reviewId, user, review, rating, createdAt];
}
