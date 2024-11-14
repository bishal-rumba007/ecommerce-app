part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserInfo() = GetUserInfo;
  const factory ProfileEvent.updateUserInfo(
      {required EditUserInfoParams userUpdateParams}) = UpdateUserInfo;
  const factory ProfileEvent.deleteUser({required String password}) =
      DeleteUser;
  const factory ProfileEvent.updatePassword(
      {required ChangePasswordParams params}) = UpdatePassword;
}
