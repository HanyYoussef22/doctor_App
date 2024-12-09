import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
 // @JsonKey(name: 'message_error')
  final String? message;
  final int? status;
  final int? code;

  ApiErrorModel({
      this.message,
      this.status, 
      this.code,});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);



  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);



}