import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoDoctor extends StatelessWidget {
  const LogoDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/logo.svg"),
        const SizedBox(width: 5,),
        Text("DOCDOC",style: Styles.font24BlackW700,)
      ],
    );
  }
}
