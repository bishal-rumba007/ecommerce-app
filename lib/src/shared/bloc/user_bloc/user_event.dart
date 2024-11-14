part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUserInfo() = GetUser;
  const factory UserEvent.checkUser() = CheckUser;
}
