import 'package:doctor_app/features/home_screen/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/style/colors.dart';
import '../../../../core/theming/style/styles.dart';
class DoctorSpecailityListViewItem extends StatelessWidget {
  final int index;
  final SpecializationData? specializationList;
  const DoctorSpecailityListViewItem({super.key, required this.index, required this.specializationList});

  @override
  Widget build(BuildContext context) {
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
            '${specializationList!.name } ',
            style: Styles.font12BlueRugular,
          )
        ],
      ),
    );
  }
}
