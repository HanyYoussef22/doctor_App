import 'package:doctor_app/features/home_screen/ui/widgets/doctor_blue_container.dart';
import 'package:doctor_app/features/home_screen/ui/widgets/doctor_list_view.dart';
import 'package:doctor_app/features/home_screen/ui/widgets/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home_screen/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_specaility_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
           width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 16.h, bottom: 40.h),
          child: const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeTopBar(),
                DoctorBlueContainer(),
                DoctorSpecialitySeeAll(),
                DoctorSpecialityListView(),
                RecommendationDoctor(),
                DoctorListView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
