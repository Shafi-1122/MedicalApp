import 'package:json_annotation/json_annotation.dart';

part 'associated_drug.g.dart';

@JsonSerializable()
class AssociatedDrug {
  String? name;
  String? dose;
  String? strength;

  AssociatedDrug({this.name, this.dose, this.strength});

  factory AssociatedDrug.fromJson(Map<String, dynamic> json) {
    return _$AssociatedDrugFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssociatedDrugToJson(this);
}
