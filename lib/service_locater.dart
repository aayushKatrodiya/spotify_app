import 'package:get_it/get_it.dart';
import 'package:spotify_app2/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify_app2/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_app2/domain/repository/auth/auth.dart';
import 'package:spotify_app2/domain/usecases/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initiolizeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl(),
  );

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );
  sl.registerSingleton<SignupUsecase>(
    SignupUsecase(),
  );
}
