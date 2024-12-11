import 'package:doctor_app/features/sinup_screen/ui/widget/create_account_text.dart';
import 'package:doctor_app/features/sinup_screen/ui/widget/sinup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/already_have_account_text.dart';

class SinupScreen extends StatelessWidget {
  const SinupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            body:Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(top: 50.h),
              child:  SingleChildScrollView(
                child: Column(
                  children: [
                    const CreateAcccountText(),
                    SizedBox(height: 15.h,),
                    const SinupForm(),
                    SizedBox(height: 15.h,),
                    const AlreadyHaveAccountText()
                  ],
                ),
              ),
            )
        ));
  }
}
