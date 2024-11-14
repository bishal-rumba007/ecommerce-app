import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ecommerce_app/src/services/user_cache_service/data/datasource/local/user_local_datasource.dart';
import 'package:ecommerce_app/src/services/user_cache_service/data/repositories/user_repository_impl.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

import '../../../../fixtures/dummy_data.dart';

class MokUserDatasource extends Mock implements UserDataSource {}

void main() {
  late UserDataSource userDataSource;
  late UserRepository userRepository;

  setUp(() {
    userDataSource = MokUserDatasource();
    userRepository = UserRepositoryImpl(userDataSource);
  });

  test('Should return User model when success', () async {
    when(
      () => userDataSource.fetchUser(),
    ).thenAnswer((invocation) async => Either.right(ktestUserFromMap));
    final data = await userRepository.fetchUser();
    expect(data.isRight(), true);
  });

  test('Should return null when user is found', () async {
    // arrange or STUB
    when(
      () => userDataSource.fetchUser(),
    ).thenAnswer((_) async => Either.left(AppException(
          identifier: '',
          message: '',
          statusCode: 0,
        )));

    // act
    final data = await userDataSource.fetchUser();

    // assert
    expect(data.isLeft(), true);
  });
}
