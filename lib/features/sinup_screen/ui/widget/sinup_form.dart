import 'package:doctor_app/features/sinup_screen/logic/sinup_cubit.dart';
import 'package:doctor_app/features/sinup_screen/ui/widget/sinup_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../../../login_screen/ui/widgets/PasswordValidation.dart';

class SinupForm extends StatefulWidget {
  const SinupForm({super.key});

  @override
  State<SinupForm> createState() => _SinupFormState();
}

class _SinupFormState extends State<SinupForm> {
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
    passwordController=context.read<SinupCubit>().passController;
    setupPasswordControllerListenner();
  }
  setupPasswordControllerListenner(){

    passwordController.addListener( (){
      setState(() {
        hasLowerCase=AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase=AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters=AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber=AppRegex.hasNumber(passwordController.text);
        hasMinLenght=AppRegex.hasMinLength(passwordController.text);
      });

    });

  }
  @override
  Widget build(BuildContext context) {
    final sinUpCubit=context.read<SinupCubit>();
    return  Form(
      key: sinUpCubit.formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Full Name',
            validator: (text) {  },
            controller: sinUpCubit.nameController,
          ),
          SizedBox(height: 10.h,),
          AppTextFormField(
            hintText: 'Email',
            validator: (text) {  },
            controller: sinUpCubit.emailController,
          ),
          SizedBox(height: 10.h,),
          AppTextFormField(
            hintText: 'phone',
            validator: (text) {  },
            controller: sinUpCubit.phoneController,
          ),
          SizedBox(height: 10.h,),
          AppTextFormField(
            hintText: 'Password',
            validator: (text) {  },
            controller: sinUpCubit.passController,
            isObscureText: obscureText,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon:
                Icon(obscureText ? Icons.visibility_off : Icons.visibility)),
          ),
          SizedBox(height: 10.h,),
          AppTextFormField(
            hintText: 'Confirm Password',
            validator: validateConfirmPassword,
            controller: sinUpCubit.passConformController,
            isObscureText: obscureText,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon:
                Icon(obscureText ? Icons.visibility_off : Icons.visibility)),
          ),
          SizedBox(height: 10.h,),
          PasswordValidation(
              hasLowerCase: hasLowerCase,
              hasMinLenght: hasMinLenght,
              hasNumber: hasNumber,
              hasSpecialCharacters: hasSpecialCharacters,
              hasUpperCase: hasUpperCase),
          const SinupBlocListener(),
          SizedBox(height: 10.h,),
          CustomButton(
            text: 'Sign Up',
             onTap: (){
              validateSinUp(context);
             },
          ),
        ],
      ),
    );
  }
  void validateSinUp(BuildContext context)
  {
    if(context.read<SinupCubit>().formKey.currentState!.validate()){
      context.read<SinupCubit>().emitSinUpState();
    }
  }
  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm Password cannot be empty';
    }
    if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
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
