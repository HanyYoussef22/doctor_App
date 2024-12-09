  import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependenct_injection.dart';

void main() {
  setupGitIt();
  runApp( DoctorApp(appRouter: AppRouter(),));
}
