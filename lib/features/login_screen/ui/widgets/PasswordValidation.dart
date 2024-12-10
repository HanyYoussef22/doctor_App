import 'package:doctor_app/core/theming/style/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLenght;

  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLenght});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(

        children: [
          buildValiditionRow(' At least 1 lowercase letter', hasLowerCase),
          const SizedBox(
            height: 2,
          ),
          buildValiditionRow(' At least 1 upper case letter', hasUpperCase),
          const SizedBox(
            height: 2,
          ),
          buildValiditionRow(
              ' At least 1 special characters ', hasSpecialCharacters),
          const SizedBox(
            height: 2,
          ),
          buildValiditionRow(' At least 1 number ', hasNumber),
          const SizedBox(
            height: 2,
          ),
          buildValiditionRow(' At least 8 character long ', hasMinLenght),
        ],
      ),
    );
  }

  Widget buildValiditionRow(String text, bool hasValidation) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.grey,
        ),
        Text(
          text,
          style: Styles.font13DarkBuleregular.copyWith(
            decoration: hasValidation ? TextDecoration.lineThrough : null,
            color:   Colors.grey,
          ),
        )
      ],
    );
  }
}
