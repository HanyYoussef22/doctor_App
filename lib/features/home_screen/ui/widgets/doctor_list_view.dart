import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
            itemBuilder: (context, index) {
          return const ItemDoctor();
        }),
      ],
    );
  }
}

class ItemDoctor extends StatelessWidget {
  const ItemDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 88.h,
            width: 88.w,
            child: Image.asset(
              'assets/images/imgeview.png',
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. John Doe',
                style: Styles.font15DarkBlueMedium
              ),
              Text(
                'General | Cardiologist',
                style: Styles.font14LightGry
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.yellow,size: 20,),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '4.5',
                    style: Styles.font12GryW700
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '( 3600 reviews )',
                    style: Styles.font12GryW700
                    ),

                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
