import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/repositories/pokemon/models/species/species.dart';

import '../ability_item/ability_item.dart';
import '../pokemon_sprites/pokemon_sprites.dart';
import '../pokemon_types/pokemon_type.dart';

part 'pokemon_details.freezed.dart';
part 'pokemon_details.g.dart';

@freezed
class PokemonDetails with _$PokemonDetails {
  const factory PokemonDetails({
    required List<AbilityItem> abilities,
    required int id,
    @JsonKey(name: 'base_experience') required int experience,
    required int height,
    required int weight,
    required String name,
    required Species species,
    required PokemonSprites sprites,
    required List<PokemonType> types,
  }) = _PokemonDetails;

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);
}
