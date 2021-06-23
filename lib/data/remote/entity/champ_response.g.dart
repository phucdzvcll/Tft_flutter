// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champ_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampResponse _$ChampResponseFromJson(Map<String, dynamic> json) {
  return ChampResponse(
    name: json['name'] as String?,
    id: json['id'] as String?,
    cost: json['cost'] as int?,
    traits:
        (json['traits'] as List<dynamic>?)?.map((e) => e as String).toList(),
    items: (json['items'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$ChampResponseToJson(ChampResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'cost': instance.cost,
      'traits': instance.traits,
      'items': instance.items,
    };
