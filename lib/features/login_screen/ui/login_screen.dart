import 'package:doctor_app/features/login_screen/ui/widgets/email_and_password.dart';
import 'package:doctor_app/features/login_screen/ui/widgets/welecome_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/condetion_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 40.h, top: 80.h,left: 25.w,right: 25.w),
              child:  Column(
                children: [
                  const WelcomBack(),
                  SizedBox(height: 5.h,),
                  const EmailAndPassword(),
                  SizedBox(height: 35.h,),
                   const CondetionText(),

                ],
              ),
            ),
          ),
        )
    );
  }
}
