import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:doctor_app/features/home_screen/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDoctor extends StatelessWidget {
  final int index;
  final Doctors? doctor;

  const ItemDoctor({super.key, required this.index, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 88.h,
            width: 88.w,
            child: Builder(
              builder: (context) {
                if (index == 1) {
                  return Image.asset('assets/images/1.png');
                } else if (index == 2) {
                  return Image.asset('assets/images/2.png');
                } else if (index == 3) {
                  return Image.asset('assets/images/3.png');
                } else if (index == 4) {
                  return Image.asset('assets/images/2.png');
                } else {
                  return Image.asset(
                      'assets/images/imgeview.png'); // الصورة الافتراضية
                }
              },
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(doctor?.name ?? 'Dr. John Doe',
                  style: Styles.font15DarkBlueMedium),
              Text('${doctor?.degree} | ${doctor?.phone}',
                  // General | Cardiologist',
                  style: Styles.font14LightGry),
              Row(
                children: [
                  const Icon(
                    Icons.email,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(doctor?.email ?? ' 3600 reviews ',
                      style: Styles.font12GryW700),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
