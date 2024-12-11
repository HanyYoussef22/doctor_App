import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/dio_factor.dart';
import 'package:doctor_app/features/login_screen/data/repo/login_repo.dart';
import 'package:doctor_app/features/login_screen/logic/login_cubit.dart';
import 'package:doctor_app/features/sinup_screen/data/repo/sin_up_repo.dart';
import 'package:doctor_app/features/sinup_screen/logic/sinup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGitIt() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=> ApiService(dio));

  // Login DI
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  getIt.registerLazySingleton<LoginCubit>(()=> LoginCubit(getIt())) ;

//SinUp
  getIt.registerLazySingleton<SinUpRepo>(() => SinUpRepo(getIt()));

  getIt.registerLazySingleton<SinupCubit>(()=> SinupCubit(getIt())) ;

}