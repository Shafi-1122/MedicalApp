import 'package:json_annotation/json_annotation.dart';

part 'lab.g.dart';

@JsonSerializable()
class Lab {
  @JsonKey(name: 'missing_field')
  String? missingField;

  Lab({this.missingField});

  factory Lab.fromJson(Map<String, dynamic> json) => _$LabFromJson(json);

  Map<String, dynamic> toJson() => _$LabToJson(this);
}
