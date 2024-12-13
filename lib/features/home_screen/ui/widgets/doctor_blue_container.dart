import 'package:doctor_app/core/theming/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/style/styles.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override

  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children:[
          Container(
            width: double.infinity,
          height: 165.h,
          padding:  EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.w),

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(image: AssetImage("assets/images/home_blue_continer.png"),fit: BoxFit.cover)
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Book and \nschedule with \nnearest doctor',style: Styles.font18White,),
                SizedBox(height: 15.h,),
                Expanded(
                  child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManger.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ), child:
                  Text('Find Nearby',style: Styles.font13Buleregular,),

                  ),
                ) ],
            ),
        ),
          Image.asset(height: 195.h, width: 180.w,
            "assets/images/doc.png",)]
      ),
    );
  }
}
