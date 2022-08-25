// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medications_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationsClass _$MedicationsClassFromJson(Map<String, dynamic> json) =>
    MedicationsClass(
      className: (json['className'] as List<dynamic>?)
          ?.map((e) => ClassName.fromJson(e as Map<String, dynamic>))
          .toList(),
      className2: (json['className2'] as List<dynamic>?)
          ?.map((e) => ClassName2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MedicationsClassToJson(MedicationsClass instance) =>
    <String, dynamic>{
      'className': instance.className,
      'className2': instance.className2,
    };
