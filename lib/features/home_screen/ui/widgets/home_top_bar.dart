import 'package:doctor_app/core/theming/style/colors.dart';
import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Hany!', style: Styles.font18BlackW700,),
            Text('How Are you Today?', style: Styles.font13Gryregular,)
          ],
        ),

        const NotificationIcon()


      ],
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 25,

          backgroundColor: ColorsManger.moreLightGray,
          child: SvgPicture.asset("assets/svgs/alert.svg"),
        ),
        Positioned(
          top: 13.h,
          right: 14.w,
          child: SizedBox(
              height: 9.h,
              width: 9.w,
              child: SvgPicture.asset("assets/svgs/notif.svg")
          ),
        ),


        // Container(
        //   height: 50,
        //   width: 50,
        //   decoration: const BoxDecoration(
        //       color: ColorsManger.offwhite,
        //       shape: BoxShape.circle
        //   ),
        // ),
        // SizedBox(
        //     height: 30,
        //     width: 30,
        //     child: SvgPicture.asset("assets/svgs/alert.svg")
        // ),
        // Positioned(
        //   top: 10,
        //   right: 13,
        //   child: SizedBox(
        //       height: 9,
        //       width: 9,
        //       child: SvgPicture.asset("assets/svgs/notif.svg")
        //   ),
        // ),

      ],
    );
  }
}
