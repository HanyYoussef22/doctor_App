import 'package:doctor_app/features/home_screen/logic/home_cubit.dart';
import 'package:doctor_app/features/home_screen/logic/home_state.dart';
import 'package:doctor_app/features/home_screen/ui/widgets/doctor_specaility_list_view.dart';
import 'package:doctor_app/features/home_screen/ui/widgets/senglton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'doctor_list_view.dart';
import 'doctor_speciality_see_all.dart';

class SpecialitionBlocBuider extends StatelessWidget {

   const SpecialitionBlocBuider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationError ||
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is Initial,
      builder: (context, state) {
       return state.maybeWhen(
            specializationSuccess: (specializationResponse)
            {
              var specializationList =specializationResponse.specializationData;
               return setupSuccess(specializationList);
            },


         specializationError: (errorHandler) {
           return Center(
             child: Text(errorHandler.apiErrorModel.message ?? 'Error'),
           );
         },
         specializationLoading: () {
             return const Column(
                children:  [
                SpecializationSkeleton(),
                  DoctorListSkeleton(),
                ],
              );

         }
            ,orElse: () => const SizedBox.shrink(),
        );

      },
    );
  }
}
Widget setupSuccess(specializationList) {
  return Column(
    children: [
      DoctorSpecialityListView(specializationList: specializationList ??[],),
      const RecommendationDoctor(),
      DoctorListView(doctorsList: specializationList?[0].doctorsList ??[],)
    ],
  );
}