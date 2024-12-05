import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/onBordingScreen/ui/onbording_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route generateRouter(RouteSettings settings){
    switch(settings.name){
      case Routers.onBordingScreen:
        return MaterialPageRoute(
          builder: (_) =>  OnbordingScreen(),
        );


      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: Center(
                child: Text('no route defiend for ${settings. name}'),
              ),
            )
        );
    }
  }
}