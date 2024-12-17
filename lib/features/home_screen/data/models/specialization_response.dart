import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_response.g.dart';

@JsonSerializable()
class SpecializationResponse {
  @JsonKey(name: 'data')
  List<SpecializationData>? specializationData;
  SpecializationResponse({

    this.specializationData,

});

  factory SpecializationResponse.fromJson(Map<String, dynamic> json) => _$SpecializationResponseFromJson(json);

}


@JsonSerializable()
class SpecializationData {
  num? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors>? doctorsList;

  SpecializationData({
    this.id,
    this.name,
    this.doctorsList,});

  factory SpecializationData.fromJson(Map<String, dynamic> json) => _$SpecializationDataFromJson(json);

}
@JsonSerializable()
class Doctors {

  num? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  num? appointPrice;
  String? startTime;
  String? endTime;

  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.specialization,
    this.city,
    this.appointPrice,
    this.startTime,
    this.endTime,});



  factory Doctors.fromJson(Map<String, dynamic> json) => _$DoctorsFromJson(json);


}


@JsonSerializable()
class City {
  num? id;
  String? name;
  Governrate? governrate;

  City({
    this.id,
    this.name,
    this.governrate,});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@JsonSerializable()
class Governrate {
  num? id;
  String? name;

  Governrate({
    this.id,
    this.name,});

  factory Governrate.fromJson(Map<String, dynamic> json) => _$GovernrateFromJson(json);
}


@JsonSerializable()
class Specialization {
  num? id;
  String? name;

  Specialization({
    this.id,
    this.name,});



  factory Specialization.fromJson(Map<String, dynamic> json) => _$SpecializationFromJson(json);

}