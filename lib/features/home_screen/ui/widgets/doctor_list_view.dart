import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:doctor_app/features/home_screen/data/models/specialization_response.dart';
import 'package:doctor_app/features/home_screen/ui/widgets/DoctorItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  final List<Doctors?> doctorsList;
  const DoctorListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: doctorsList.length,
            itemBuilder: (context, index) {
          return  ItemDoctor(doctor:  doctorsList[index], index: index);
        }),
      ],
    );
  }
}
