import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/core/networking/dio_factor.dart';
import 'package:doctor_app/features/home_screen/data/repo/home_repo.dart';
import 'package:doctor_app/features/home_screen/logic/home_cubit.dart';
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
  getIt.registerFactory<LoginCubit>(()=> LoginCubit(getIt())) ;

//SinUp
  getIt.registerLazySingleton<SinUpRepo>(() => SinUpRepo(getIt()));
  getIt.registerFactory<SinupCubit>(()=> SinupCubit(getIt())) ;

  //Home
  // registers a type as Singleton by passing a factory function that will be called on the first call
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

  // كل مره بيكريت نسخه جديدة هو كدا مالوش لازمه
  // registers a type so that a new instance will be created on each call of get
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

}