import 'package:dio/dio.dart';
import 'package:doctor_app/core/helpers/constants.dart';
import 'package:doctor_app/core/helpers/shared_perfrance_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class DioFactory{
  // private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeader();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }
static void addDioHeader() async{
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${ await SharedPrefHelper.getString(SharedPrefKeys.userToken)} ',
    };
  }
  static void refreshDioHeader() async{
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${ await SharedPrefHelper.getString(SharedPrefKeys.userToken)} ',
    };
  }
  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }


}