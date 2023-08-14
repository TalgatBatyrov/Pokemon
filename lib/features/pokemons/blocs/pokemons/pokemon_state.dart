part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.loading() = _Loading;
  const factory PokemonState.loaded({
    // required List<PokemonDetails> pokemons,
    required MainResult response,
    // required int count,
    // required String? next,
    // required String? previous,
  }) = _Loaded;
  const factory PokemonState.error(String message) = _Error;
  const factory PokemonState.empty() = _Empty;
}
