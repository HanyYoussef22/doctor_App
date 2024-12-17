import 'package:dio/dio.dart';
import 'package:doctor_app/features/home_screen/data/models/specialization_response.dart';
import 'package:doctor_app/features/login_screen/data/models/login_request_body.dart';
import 'package:doctor_app/features/login_screen/data/models/login_response.dart';
import 'package:doctor_app/features/sinup_screen/data/models/sinup_body.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/sinup_screen/data/models/sinup_response.dart';
import 'api_constant.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstant.register)
  Future<SinupResponse> sinup(@Body() SinUpBody sinUpBody);

  @GET(ApiConstant.gethomepeScialization)
  Future<SpecializationResponse>getSpecialization();

  // @GET('/tasks')
  // Future<List<Task>> getTasks();
}

