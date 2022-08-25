import 'package:json_annotation/json_annotation.dart';

import 'problem.dart';

part 'medicine_model.g.dart';

@JsonSerializable()
class MedicineModel {
  List<Problem>? problems;

  MedicineModel({this.problems});

  factory MedicineModel.fromJson(Map<String, dynamic> json) {
    return _$MedicineModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MedicineModelToJson(this);
}
