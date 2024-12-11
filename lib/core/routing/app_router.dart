import 'package:dio/dio.dart';
import 'package:doctor_app/core/di/dependenct_injection.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login_screen/logic/login_cubit.dart';
import 'package:doctor_app/features/login_screen/ui/login_screen.dart';
import 'package:doctor_app/features/onBordingScreen/ui/onbording_screen.dart';
import 'package:doctor_app/features/sinup_screen/data/repo/sin_up_repo.dart';
import 'package:doctor_app/features/sinup_screen/logic/sinup_cubit.dart';
import 'package:doctor_app/features/sinup_screen/ui/sinup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routers.onBordingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnbordingScreen(),
        );
      case Routers.loginScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routers.signupScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => getIt<SinupCubit>(),
                child: const SinupScreen(),
              ),
        );


      default:
        return MaterialPageRoute(
            builder: (context) =>
                Scaffold(
                  body: Center(
                    child: Text('no route defiend for ${settings.name}'),
                  ),
                )
        );
    }
  }
}