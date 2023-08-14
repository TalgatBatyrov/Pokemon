// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetails _$$_PokemonDetailsFromJson(Map<String, dynamic> json) =>
    _$_PokemonDetails(
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AbilityItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      experience: json['base_experience'] as int,
      height: json['height'] as int,
      weight: json['weight'] as int,
      name: json['name'] as String,
      species: Species.fromJson(json['species'] as Map<String, dynamic>),
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonDetailsToJson(_$_PokemonDetails instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'id': instance.id,
      'base_experience': instance.experience,
      'height': instance.height,
      'weight': instance.weight,
      'name': instance.name,
      'species': instance.species,
      'sprites': instance.sprites,
      'types': instance.types,
    };
