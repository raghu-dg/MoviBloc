import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/splash/splash_screen.dart';
import 'package:movi/view/screen/search_screen.dart';
import 'package:movi/di/injector.dart' as Injector;
import 'package:movi/view/state_manager/search_bloc.dart';

void main() {
  Injector.initialize();
  runApp(const TmdbSearchApp());
}

class TmdbSearchApp extends StatelessWidget {
  const TmdbSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => Injector.locator<SearchBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Tmdb Search',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
