import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/login_screen/data/models/login_request_body.dart';
import 'package:doctor_app/features/login_screen/data/models/login_response.dart';
import 'package:doctor_app/features/sinup_screen/data/models/sinup_body.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/sinup_screen/data/models/sinup_response.dart';
import 'api_constant.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstant.Login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstant.Register)
  Future<SinupResponse> sinup(@Body() SinUpBody sinUpBody);
  // @GET('/tasks')
  // Future<List<Task>> getTasks();
}

