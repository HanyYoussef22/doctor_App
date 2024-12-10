import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/login_screen/data/models/login_request_body.dart';
import 'package:doctor_app/features/login_screen/data/models/login_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

import 'api_constant.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstant.Login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  // @GET('/tasks')
  // Future<List<Task>> getTasks();
}

