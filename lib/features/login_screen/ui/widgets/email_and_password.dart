import 'package:doctor_app/core/helpers/app_regex.dart';
import 'package:doctor_app/core/widgets/text_form_field.dart';
import 'package:doctor_app/features/login_screen/logic/login_cubit.dart';
import 'package:doctor_app/features/login_screen/ui/widgets/PasswordValidation.dart';
import 'package:doctor_app/features/login_screen/ui/widgets/forget_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool obscureText = false;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLenght = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passController;
    setupPasswordControllerListenner();
  }

  void setupPasswordControllerListenner() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLenght = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Form(
      key: loginCubit.formKey,
      child: Column(children: [
        AppTextFormField(
          controller: loginCubit.emailController,
          hintText: 'email',
          validator: emailValidate,
        ),
        SizedBox(
          height: 12.h,
        ),
        AppTextFormField(
          hintText: 'password',
          controller: loginCubit.passController,
          isObscureText: !obscureText,
          validator: passValidate,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon:
                  Icon(obscureText ? Icons.visibility_off : Icons.visibility)),
        ),
        SizedBox(
          height: 15.h,
        ),
        PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasMinLenght: hasMinLenght,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasUpperCase: hasUpperCase),
        SizedBox(
          height: 15.h,
        ),
        const ForgetPass(),
        SizedBox(
          height: 40.h,
        ),
        CustomButton(
          text: 'Login',
          onTap: () {
            validateLogin(context);
          },
        )
      ]),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  validateLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitloginState();
    }
  }

  String? emailValidate(String? text) {
    // Check for null or empty input
    if (text == null || text.trim().isEmpty) {
      return 'Please enter a valid email address';
    }

    // Define a more precise email regex pattern
    final bool emailRegex = AppRegex.isEmailValid(text);

    // Check if the input matches the regex pattern
    if (!emailRegex) {
      return 'Email is not valid';
    }

    return null; // Email is valid
  }

  String? passValidate(String? text) {
    // Define regex for password validation
    final bool passwordRegex = AppRegex.isPasswordValid(text);

    // Null or empty check
    if (text == null || text.trim().isEmpty) {
      return 'Password is required';
    }

    // Check for password complexity
    if (!passwordRegex) {
      return 'Password must have at least 8 characters, an uppercase letter, '
          'a lowercase letter, a digit, and a special character';
    }

    return null; // Password is valid
  }
}
