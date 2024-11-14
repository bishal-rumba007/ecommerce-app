import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/change_password_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/delete_user_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/edit_user_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/get_user_usecase.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUserUsecase getUserUsecase;
  final EditUserInfoUsecase editUserInfoUsecase;
  final DeleteUserUsecase deleteUserUsecase;
  final ChangePasswordUsecase changePasswordUsecase;

  ProfileBloc({
    required this.getUserUsecase,
    required this.editUserInfoUsecase,
    required this.deleteUserUsecase,
    required this.changePasswordUsecase,
  }) : super(const ProfileState.initial()) {
    on<GetUserInfo>(_onGetUserInfo);
    on<UpdateUserInfo>(_onUpdateUserInfo);
    on<DeleteUser>(_onDeleteUser);
    on<UpdatePassword>(_onChangePassword);
  }

  Future<void> _onGetUserInfo(
    GetUserInfo event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    final result = await getUserUsecase.call();
    result.fold(
      (error) => emit(ProfileState.failure(message: error.message)),
      (message) => emit(
          const ProfileState.success(message: 'User fetched successfully')),
    );
  }

  Future<void> _onUpdateUserInfo(
    UpdateUserInfo event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    final result = await editUserInfoUsecase.call(event.userUpdateParams);
    result.fold(
      (error) => emit(ProfileState.failure(message: error.message)),
      (success) => emit(
          const ProfileState.success(message: 'User updated successfully')),
    );
  }

  Future<void> _onDeleteUser(
    DeleteUser event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    final result = await deleteUserUsecase.call(event.password);
    result.fold(
      (error) => emit(ProfileState.failure(message: error.message)),
      (success) => emit(ProfileState.success(message: success)),
    );
  }

  Future<void> _onChangePassword(
    UpdatePassword event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    final result = await changePasswordUsecase.call(event.params);
    result.fold(
      (error) => emit(ProfileState.failure(message: error.message)),
      (success) => emit(ProfileState.success(message: success)),
    );
  }
}
