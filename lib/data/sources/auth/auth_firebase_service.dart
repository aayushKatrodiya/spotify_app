import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app2/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(CreateUserReq createUserReq);
  Future<void> signIn();
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<void> signIn() async {}

  @override
  Future<Either> signUp(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password: createUserReq.password,
      );
      return const Right("Signup was successfull");
    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == "Week-Password") {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'Anaccount already exists with that email.';
      }

      return Left(message);
    }
  }
}
