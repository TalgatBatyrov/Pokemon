part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.loading() = _Loading;
  const factory PokemonState.loaded({
    required MainResult response,
  }) = _Loaded;
  const factory PokemonState.error(String message) = _Error;
  const factory PokemonState.empty() = _Empty;
}
