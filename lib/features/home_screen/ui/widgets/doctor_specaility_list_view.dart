import 'package:doctor_app/core/theming/style/colors.dart';
import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManger.lighterBlue,
                    child: Image.asset(
                      'assets/images/icondoc.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'General',
                    style: Styles.font12BlueRugular,
                  )
                ],
              ),
            );
          }),
    );
  }
}

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recommendation Doctor',
          style: Styles.font18BlackW600,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {  },
          child: Text(
            'See All',
            style:Styles.font14Blue,
          ),
        ),


      ],
    );
  }
}
