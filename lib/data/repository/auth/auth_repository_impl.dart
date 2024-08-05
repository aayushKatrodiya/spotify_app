import 'package:dartz/dartz.dart';
import 'package:spotify_app2/data/models/auth/create_user_req.dart';
import 'package:spotify_app2/data/models/auth/signin_user_req.dart';
import 'package:spotify_app2/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_app2/domain/repository/auth/auth.dart';

import '../../../service_locater.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signIn(SigninUserReq signinUserReq) async {
    return await sl<AuthFirebaseService>().signIn(signinUserReq);
  }

  @override
  Future<Either> signUp(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signUp(createUserReq);
  }
}
