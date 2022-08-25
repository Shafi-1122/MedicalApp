import 'package:json_annotation/json_annotation.dart';

import 'associated_drug.dart';
import 'associated_drug2.dart';

part 'class_name2.g.dart';

@JsonSerializable()
class ClassName2 {
  List<AssociatedDrug>? associatedDrug;
  @JsonKey(name: 'associatedDrug#2')
  List<AssociatedDrug2>? associatedDrug2;

  ClassName2({this.associatedDrug, this.associatedDrug2});

  factory ClassName2.fromJson(Map<String, dynamic> json) {
    return _$ClassName2FromJson(json);
  }

  Map<String, dynamic> toJson() => _$ClassName2ToJson(this);
}
