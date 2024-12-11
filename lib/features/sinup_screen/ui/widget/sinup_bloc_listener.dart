import 'package:doctor_app/core/helpers/extenation.dart';
import 'package:doctor_app/features/sinup_screen/logic/sinup_cubit.dart';
import 'package:doctor_app/features/sinup_screen/logic/sinup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/style/colors.dart';
import '../../../../core/widgets/error_show_dialog.dart';

class SinupBlocListener extends StatelessWidget {
  const SinupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SinupCubit, SinupState>(
      listenWhen: (_, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManger.primaryColor,
                  ),
                );
              });
        }, success: (sinUpResponse) {
          context.pop();
          context.pushReplacementNamed(Routers.homeScreen);
        }, error: (error) {
          context.pop();
          setupErrorState(context, error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
