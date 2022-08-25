import 'package:json_annotation/json_annotation.dart';

import 'lab.dart';
import 'medication.dart';

part 'diabetes.g.dart';

@JsonSerializable()
class Diabetes {
  List<Medication>? medications;
  List<Lab>? labs;

  Diabetes({this.medications, this.labs});

  factory Diabetes.fromJson(Map<String, dynamic> json) {
    return _$DiabetesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DiabetesToJson(this);
}
