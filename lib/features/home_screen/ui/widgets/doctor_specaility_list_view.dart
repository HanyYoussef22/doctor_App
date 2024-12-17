import 'package:doctor_app/features/home_screen/data/models/specialization_response.dart';
import 'package:doctor_app/features/home_screen/ui/widgets/doctor_specaility_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> specializationList;
   const DoctorSpecialityListView({required this.specializationList,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: specializationList.length,
          itemBuilder: (context, index) {
            return DoctorSpecailityListViewItem(index: index, specializationList: specializationList[index],);
          }),
    );
  }
}
