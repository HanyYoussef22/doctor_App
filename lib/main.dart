import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependenct_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_perfrance_helper.dart';

void main() async{
  setupGitIt();
  await WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await chickIfUserLogin();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}
 chickIfUserLogin()async
{
  String token =await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if(token == null || token.isEmpty || token == 'null' || token == ''){
    isUserLogin = false;
  }else{
    isUserLogin = true;
  }
}