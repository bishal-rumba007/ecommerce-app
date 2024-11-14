import 'package:ecommerce_app/src/feature/auth/data/model/user_model.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/shared/domain/models/response.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

import 'data/user_map.dart';

final AppException ktestAppException =
    AppException(message: '', statusCode: 0, identifier: '');

final UserModel ktestUser = UserModel.fromJson(ktestUserMap);

final User ktestUserFromMap = UserModel.fromJson(ktestUserMap);

final Response ktestUserResponse =
    Response(statusMessage: 'message', statusCode: 1, data: {});
