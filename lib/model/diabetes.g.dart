// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diabetes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Diabetes _$DiabetesFromJson(Map<String, dynamic> json) => Diabetes(
      medications: (json['medications'] as List<dynamic>?)
          ?.map((e) => Medication.fromJson(e as Map<String, dynamic>))
          .toList(),
      labs: (json['labs'] as List<dynamic>?)
          ?.map((e) => Lab.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiabetesToJson(Diabetes instance) => <String, dynamic>{
      'medications': instance.medications,
      'labs': instance.labs,
    };
