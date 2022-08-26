import 'package:json_annotation/json_annotation.dart';

part 'associated_drug.g.dart';

@JsonSerializable()
class AssociatedDrug {
  @JsonKey(name:'name')
  String? name;
    @JsonKey(name:'dose')
  String? dose;
    @JsonKey(name:'strenght')

  String? strength;

  AssociatedDrug({this.name, this.dose, this.strength});

  factory AssociatedDrug.fromJson(Map<String, dynamic> json) {
    return _$AssociatedDrugFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssociatedDrugToJson(this);
}
