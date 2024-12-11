import 'package:freezed_annotation/freezed_annotation.dart';

part 'sinup_body.g.dart';
@JsonSerializable()
class SinUpBody{

  final String name;
  final String phone;
  final String email;
  final String password;
  final String gender;
  @JsonKey(name: 'password_confirmation')
  final String? passwordconfirmation;




  SinUpBody( {required this.gender,required this.name, required this.phone, required this.email,required this.passwordconfirmation, required this.password});

  factory SinUpBody.fromJson(Map<String, dynamic> json) => _$SinUpBodyFromJson(json);



  Map<String, dynamic> toJson() => _$SinUpBodyToJson(this);
}