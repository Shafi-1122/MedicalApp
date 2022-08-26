import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/json_serializable.dart';
// import 'asthma.dart';
import 'diabetes.dart';

part 'problem.g.dart';

@JsonSerializable()
class Problem {
  @JsonKey(name: 'Diabetes')
  List<Diabetes>? diabetes;
  // @JsonKey(name: 'Asthma')
  // List<Asthma>? asthma;

  Problem({this.diabetes, });

  factory Problem.fromJson(Map<String, dynamic> json) {
    return _$ProblemFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProblemToJson(this);
}
