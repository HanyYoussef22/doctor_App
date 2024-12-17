import 'package:doctor_app/core/helpers/extenation.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login_screen/logic/login_cubit.dart';
import 'package:doctor_app/features/login_screen/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theming/style/colors.dart';
import '../../../../core/widgets/error_show_dialog.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (_, current) =>
            current is Loading || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(
              loading: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManger.primaryColor,
                    ),
                  );
                });
          }, success: (loginresponse) {
            context.pop();
            context.pushReplacementNamed(Routers.homeScreen);
          }, error: (error) {
                context.pop();
            setupErrorState(context, error);
            // print("$error");
          });
        },
        child: const SizedBox.shrink(),
        );

  }
}
