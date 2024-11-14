

import 'package:ecommerce_app/src/feature/auth/data/model/user_model.dart';
import 'package:ecommerce_app/src/feature/review/domain/entities/review.dart';

class ReviewModel extends Review{

  const ReviewModel({
    required super.reviewId,
    super.user,
    required super.review,
    required super.rating,
    required super.createdAt,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json){
    return ReviewModel(
      reviewId: json['id'],
      user: json['user'] != null ? UserModel.fromJson(json['user']) : null,
      review: json['comment'],
      rating: json['rating'],
      createdAt: json['created_at'],
    );
  }
}