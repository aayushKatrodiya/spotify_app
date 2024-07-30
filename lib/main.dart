import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify_app2/firebase_options.dart';
import 'package:spotify_app2/presentation/choose_mode/block/theme_cubit.dart';
import 'package:spotify_app2/presentation/splash/pages/splash.dart';

import 'service_locater.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize HydratedStorage
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBloc.storage = storage;

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initiolizeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // final HydratedStorage storage;

  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: Builder(
        builder: (context) {
          final themeCubit = context.watch<ThemeCubit>();
          return MaterialApp(
            themeMode: themeCubit.state,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            home: const SplashPage(),
          );
        },
      ),
    );
  }
}
