// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbilityItem _$$_AbilityItemFromJson(Map<String, dynamic> json) =>
    _$_AbilityItem(
      ability: TypeModel.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int,
    );

Map<String, dynamic> _$$_AbilityItemToJson(_$_AbilityItem instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };
