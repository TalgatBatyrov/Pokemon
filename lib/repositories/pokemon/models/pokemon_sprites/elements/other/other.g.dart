// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Other _$$_OtherFromJson(Map<String, dynamic> json) => _$_Other(
      dreamWorld:
          DreamWorld.fromJson(json['dream_world'] as Map<String, dynamic>),
      officialArtwork: OfficialArtwork.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OtherToJson(_$_Other instance) => <String, dynamic>{
      'dream_world': instance.dreamWorld,
      'official-artwork': instance.officialArtwork,
    };
