import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/shared_perfrance_helper.dart';
import 'package:doctor_app/core/networking/api_error_handeler.dart';
import 'package:doctor_app/features/sinup_screen/data/models/sinup_body.dart';
import 'package:doctor_app/features/sinup_screen/data/repo/sin_up_repo.dart';
import 'package:doctor_app/features/sinup_screen/logic/sinup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SinupCubit extends Cubit<SinupState> {
  final SinUpRepo _sinUpRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passConformController = TextEditingController();

  SinupCubit(this._sinUpRepo) : super(const SinupState.initail());

  void emitSinUpState() async {
    emit(const SinupState.loading());
    final response = await _sinUpRepo.sinUp(SinUpBody(
      name: nameController.text,
      email: emailController.text,
      password: passController.text,
      phone: phoneController.text,
      gender: '0',
      passwordconfirmation: passConformController.text,
    ));
    response.when(success: (sinupResponse) {
       var token = sinupResponse.data?.token;
      saveUserToken(token ?? '');
      emit(SinupState.success(sinupResponse));
    }, failure: (error) {
      emit(SinupState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
  void saveUserToken(String token ) async{
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
  }
}
