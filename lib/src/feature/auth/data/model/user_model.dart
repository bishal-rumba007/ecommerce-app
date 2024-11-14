import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phoneNo,
    required super.gender,
    super.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: (json['id']).toString(),
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNo: json['phone_No'] as String,
      avatar: json['avatar'],
      gender: json['gender'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone_No': phoneNo,
      'avatar': avatar,
      'gender': gender,
    };
  }

  factory UserModel.fromEntity(User user) {
    return UserModel(
      id: user.id,
      name: user.name,
      email: user.email,
      phoneNo: user.phoneNo,
      avatar: user.avatar,
      gender: user.gender,
    );
  }
}
