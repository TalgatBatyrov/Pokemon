import 'package:freezed_annotation/freezed_annotation.dart';

import '../type_model.dart/type_model.dart';

part 'pokemon_type.freezed.dart';
part 'pokemon_type.g.dart';

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    required int slot,
    required TypeModel type,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}
