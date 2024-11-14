import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(const UserState.initial()) {
    on<GetUser>(_onGetUser);
    on<CheckUser>(_onCheckUser);
  }

  Future<void> _onGetUser(
    GetUser event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    final result = await userRepository.fetchUser();
    result.fold(
      (exception) => emit(UserState.error(exception.message)),
      (user) => emit(UserState.loaded(user)),
    );
  }

  Future<void> _onCheckUser(
    CheckUser event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    final result = await userRepository.hasUser();
    emit(UserState.hasUser(result));
  }
}
