import 'package:doctor_app/core/theming/style/colors.dart';
import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/bgdoc.svg"),
        Container(
          foregroundDecoration:   BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorsManger.whiteColor,
                Colors.white.withOpacity(0.0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14,0.4]

            )
          ),
            child: Image.asset("assets/images/doctorOnbording.png")
        ),
        Positioned(
          bottom: 10.h,
          left: 0.w,
          right: 0.w,
          child: Text('Best Doctor \n Appointment App',style: Styles.font32BlueW700,textAlign: TextAlign.center,
            ),
        )
      ],
    );
  }
}
