import 'package:json_annotation/json_annotation.dart';

import 'associated_drug.dart';
import 'associated_drug2.dart';

part 'class_name.g.dart';

@JsonSerializable()
class ClassName {
    @JsonKey(name: 'associatedDrug')

  List<AssociatedDrug>? associatedDrug;
  @JsonKey(name: 'associatedDrug#2')
  List<AssociatedDrug2>? associatedDrug2;

  ClassName({this.associatedDrug, this.associatedDrug2});

  factory ClassName.fromJson(Map<String, dynamic> json) {
    return _$ClassNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ClassNameToJson(this);
}
