// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Problem _$ProblemFromJson(Map<String, dynamic> json) => Problem(
      diabetes: (json['Diabetes'] as List<dynamic>?)
          ?.map((e) => Diabetes.fromJson(e as Map<String, dynamic>))
          .toList(),
  
    );

Map<String, dynamic> _$ProblemToJson(Problem instance) => <String, dynamic>{
      'Diabetes': instance.diabetes,
    
    };
