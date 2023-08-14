// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainResult _$$_MainResultFromJson(Map<String, dynamic> json) =>
    _$_MainResult(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MainResultToJson(_$_MainResult instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
