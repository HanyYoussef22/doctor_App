import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/shared_perfrance_helper.dart';
import 'package:doctor_app/core/networking/dio_factor.dart';
import 'package:doctor_app/features/login_screen/data/models/login_request_body.dart';
import 'package:doctor_app/features/login_screen/data/repo/login_repo.dart';
import 'package:doctor_app/features/login_screen/logic/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitloginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        password: passController.text, email: emailController.text));
    response.when(success: (loginResp) async {

      var token=loginResp.userData?.token;
      saveUserToken(token ?? '');

      emit(LoginState.success(loginResp));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
  void saveUserToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    DioFactory.refreshDioHeader();
  }
}
