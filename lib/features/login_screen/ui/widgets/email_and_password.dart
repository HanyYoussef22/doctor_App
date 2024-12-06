import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:doctor_app/core/widgets/text_form_field.dart';
import 'package:doctor_app/features/login_screen/ui/widgets/forget_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool ObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        AppTextFormField(
          hintText: 'email',
          validator: (text) {},
        ),
        SizedBox(
          height: 12.h,
        ),
        AppTextFormField(
          hintText: 'password',
          isObscureText: !ObscureText,
          validator: (text) {},
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  ObscureText = !ObscureText;
                });

              },
              icon:
                  Icon(ObscureText ? Icons.visibility : Icons.visibility_off)),
        ),
        SizedBox(
          height: 15.h,
        ),
        const ForgetPass(),
        SizedBox(
          height: 40.h,
        ),
        CustomButton(
          text: 'Login',
          onTap: () {},
        )
      ]),
    );
  }
}
