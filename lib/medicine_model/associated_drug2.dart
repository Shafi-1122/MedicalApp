import 'package:json_annotation/json_annotation.dart';

part 'associated_drug2.g.dart';

@JsonSerializable()
class AssociatedDrug2 {
  String? name;
  String? dose;
  String? strength;

  AssociatedDrug2({this.name, this.dose, this.strength});

  factory AssociatedDrug2.fromJson(Map<String, dynamic> json) {
    return _$AssociatedDrug2FromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssociatedDrug2ToJson(this);
}
