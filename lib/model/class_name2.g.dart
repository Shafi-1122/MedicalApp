// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_name2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassName2 _$ClassName2FromJson(Map<String, dynamic> json) => ClassName2(
      associatedDrug: (json['associatedDrug'] as List<dynamic>?)
          ?.map((e) => AssociatedDrug.fromJson(e as Map<String, dynamic>))
          .toList(),
      associatedDrug2: (json['associatedDrug#2'] as List<dynamic>?)
          ?.map((e) => AssociatedDrug2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassName2ToJson(ClassName2 instance) =>
    <String, dynamic>{
      'associatedDrug': instance.associatedDrug,
      'associatedDrug#2': instance.associatedDrug2,
    };
