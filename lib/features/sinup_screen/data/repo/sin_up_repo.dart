import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/sinup_screen/data/models/sinup_body.dart';

import '../../../../core/networking/api_error_handeler.dart';
import '../models/sinup_response.dart';

class SinUpRepo {
  final ApiService apiService;
  SinUpRepo(this.apiService);

  Future<ApiResult<SinupResponse>> sinUp(SinUpBody sinUpBody) async {
    try{
   final  response= await apiService.sinup(sinUpBody);
   return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
   }
  }

}