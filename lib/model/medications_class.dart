import 'package:json_annotation/json_annotation.dart';

import 'class_name.dart';
import 'class_name2.dart';

part 'medications_class.g.dart';

@JsonSerializable()
class MedicationsClass {
  @JsonKey(name: 'className')
  List<ClassName>? className;
  @JsonKey(name: 'className2')
  List<ClassName2>? className2;

  MedicationsClass({this.className, this.className2});

  factory MedicationsClass.fromJson(Map<String, dynamic> json) {
    return _$MedicationsClassFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MedicationsClassToJson(this);
}
