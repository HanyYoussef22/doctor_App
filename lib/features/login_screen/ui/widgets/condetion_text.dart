import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CondetionText extends StatelessWidget {
  const CondetionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
              text: "By logging, you agree to our ",
              style: Styles.font12GryW700,
            ),
              TextSpan(
                text: "Terms & Conditions",
                style: Styles.font13DarkBulemedium,
              ),
              TextSpan(
                text: " and",
                style: Styles.font12GryW700,
              ),
              TextSpan(
                text: " PrivacyPolicy.",
                style: Styles.font13DarkBulemedium,
              ),

            ]
          )

        ),
        SizedBox(height: 50.h,),
        RichText(text: TextSpan(
          children: [
            TextSpan(
                text: "Already  don't have an account yet? ",
                style: Styles.font12GryW700
            ),
            TextSpan(
                text: "Sign Up ",
                style: Styles.font14Blue
            )
          ]
        ))
      ],
    );
  }
}
