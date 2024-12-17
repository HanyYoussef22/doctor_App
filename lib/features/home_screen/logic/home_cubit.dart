import 'package:doctor_app/core/networking/api_error_handeler.dart';
import 'package:doctor_app/features/home_screen/data/repo/home_repo.dart';
import 'package:doctor_app/features/home_screen/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  getSpecialization()async{
    emit(const HomeState.specializationLoading());
    final response =await _homeRepo.getSpecializationData();
    response.when(
      success: (specializationResponse) {
        emit(HomeState.specializationSuccess(specializationResponse));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationError(errorHandler));
      },
    );

  }

}
