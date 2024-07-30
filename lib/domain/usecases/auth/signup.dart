import 'package:dartz/dartz.dart';
import 'package:spotify_app2/core/usecase/usecase.dart';
import 'package:spotify_app2/data/models/auth/create_user_req.dart';
import 'package:spotify_app2/domain/repository/auth/auth.dart';

import '../../../service_locater.dart';

class SignupUsecase implements Usecase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return sl<AuthRepository>().signUp(params!);
  }
}
