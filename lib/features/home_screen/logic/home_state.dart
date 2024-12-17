import 'package:doctor_app/core/networking/api_error_handeler.dart';
import 'package:doctor_app/features/home_screen/data/models/specialization_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState<T> with _$HomeState<T> {

   const factory HomeState.initial()=Initial;
   const factory HomeState.specializationLoading()=SpecializationLoading;
   const factory HomeState.specializationSuccess(SpecializationResponse specializationResponse)=SpecializationSuccess;
   const factory HomeState.specializationError(ErrorHandler errorHandler)=SpecializationError;

}
