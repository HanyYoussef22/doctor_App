import 'package:doctor_app/core/helpers/extenation.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/features/onBordingScreen/ui/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/features/onBordingScreen/ui/widgets/logo_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 40.h, top: 40.h,left: 25.w,right: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoDoctor(),
                SizedBox(
                  height: 40.h,
                ),
                const DoctorImageAndText(),
                Column(
                  children: [
                    Text("Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",style: Styles.font13Gryregular,
                    textAlign: TextAlign.center,),
                    SizedBox(height: 10.h,),
                    CustomButton(text: 'Get Start', onTap: (){
                      context.pushNamed(Routers.loginScreen);
                    }),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
