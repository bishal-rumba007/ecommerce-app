import 'package:flutter_test/flutter_test.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

void main() {
  final AppException exception =
      AppException(message: 'message', statusCode: 1, identifier: 'identifier');

  test(
    'toString() function returns the objects',
    () {
      final expectedString =
          'statusCode=${exception.statusCode}\nmessage=${exception.message}\nidentifier=${exception.identifier}';
      final actual = exception.toString();

      expect(actual, expectedString);
    },
  );
}
