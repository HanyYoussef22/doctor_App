import 'package:doctor_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctor_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));

}


