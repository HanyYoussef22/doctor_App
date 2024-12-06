import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WelcomBack extends StatelessWidget {
  const WelcomBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome Back",
          style: Styles.font24BlueW700,
        ),
        SizedBox(height: 10.h,),
        Text(
          'We\'re excited to have you back,can\'t wait to see what you\'ve been up to since you last logged in.',
          style: Styles.font12GryW700,
        ),
        SizedBox(height: 36.h,),


      ],
    );
  }
}
