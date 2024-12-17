import 'package:doctor_app/core/theming/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/style/styles.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Doctor Speciality',
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
