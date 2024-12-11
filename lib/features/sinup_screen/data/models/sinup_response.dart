import 'package:json_annotation/json_annotation.dart';

part 'sinup_response.g.dart';
@JsonSerializable()
class SinupResponse {
String ?message;
Data ?data;
bool ?status;
int ?code;

  SinupResponse({
    this.message,
    this.data,
    this.status,
    this.code,});



  factory SinupResponse.fromJson(Map<String, dynamic> json) => _$SinupResponseFromJson(json);



  Map<String, dynamic> toJson() => _$SinupResponseToJson(this);

}

@JsonSerializable()
class Data {
String ?token;
String ?username;

  Data({
    this.token,
    this.username,});


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);



  Map<String, dynamic> toJson() => _$DataToJson(this);

}