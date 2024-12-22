import 'package:doctor_app/features/sinup_screen/data/models/sinup_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sinup_state.freezed.dart';

@freezed
class SinupState<T> with _$SinupState<T>
{
  const factory SinupState.initail()=_Initail;
  const factory SinupState.loading()=Loading;
  const factory SinupState.success(SinupResponse sinupResponse)=Success;
  const factory SinupState.error({required String error})=Error;
}
