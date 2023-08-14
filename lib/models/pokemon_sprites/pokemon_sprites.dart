import 'package:freezed_annotation/freezed_annotation.dart';

import 'elements/other/other.dart';

part 'pokemon_sprites.freezed.dart';
part 'pokemon_sprites.g.dart';

@freezed
class PokemonSprites with _$PokemonSprites {
  factory PokemonSprites({
    @JsonKey(name: 'back_default') required String backDefaultImageUrl,
    @JsonKey(name: 'back_shiny') required String backShinyImageUrl,
    @JsonKey(name: 'front_default') required String frontDefaultImageUrl,
    @JsonKey(name: 'front_shiny') required String frontShinyImageUrl,
    required Other other,
  }) = _PokemonSprites;

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);
}
