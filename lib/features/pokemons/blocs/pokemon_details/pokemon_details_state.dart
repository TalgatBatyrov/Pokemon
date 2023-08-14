part of 'pokemon_details_cubit.dart';

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState.loading() = _Loading;
  const factory PokemonDetailsState.loaded({
    required PokemonDetails pokemonDetails,
  }) = _Loaded;
  const factory PokemonDetailsState.error(String message) = _Error;
}
