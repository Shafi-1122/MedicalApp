import 'package:json_annotation/json_annotation.dart';

import 'medications_class.dart';

part 'medication.g.dart';

@JsonSerializable()
class Medication {
  @JsonKey(name: 'medicationsClasses')
  List<MedicationsClass>? medicationsClasses;

  Medication({this.medicationsClasses});

  factory Medication.fromJson(Map<String, dynamic> json) {
    return _$MedicationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MedicationToJson(this);
}
