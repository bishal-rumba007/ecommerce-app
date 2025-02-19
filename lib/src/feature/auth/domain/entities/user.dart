import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String phoneNo;
  final String gender;
  final String? avatar;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.gender,
    this.avatar,
  });

  @override
  List<Object?> get props =>
      [id, name, email, phoneNo, gender, avatar];
}
