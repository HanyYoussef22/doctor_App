import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(

              value: false, // Initial value
              onChanged: (value) {

              },
            ),
             Text("Remember me",style: Styles.font13Gryregular,),
          ],
        ),
        GestureDetector(
          onTap: () {

          },
          child: const Text(
            "Forgot Password?",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
