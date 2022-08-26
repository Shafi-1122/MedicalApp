// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associated_drug.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssociatedDrug _$AssociatedDrugFromJson(Map<String, dynamic> json) =>
    AssociatedDrug(
      name: json['name'] as String?,
      dose: json['dose'] as String?,
      strength: json['strength'] as String?,
    );

Map<String, dynamic> _$AssociatedDrugToJson(AssociatedDrug instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dose': instance.dose,
      'strength': instance.strength,
    };
