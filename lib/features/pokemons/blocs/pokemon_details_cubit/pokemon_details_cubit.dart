import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../repositories/pokemon/i_pokemon_repository.dart';
import '../../../../repositories/pokemon/models/pokemon_details/pokemon_details.dart';

part 'pokemon_details_cubit.freezed.dart';
part 'pokemon_details_state.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  final IPokemonRepository _pokemonRepository;
  PokemonDetailsCubit(this._pokemonRepository)
      : super(const PokemonDetailsState.initial());

  Future<void> getPokemonDetails(String id) async {
    try {
      emit(const PokemonDetailsState.loading());

      final pokemonDetails = await _pokemonRepository.getPokemon(id);

      emit(PokemonDetailsState.loaded(pokemonDetails: pokemonDetails));
    } catch (e) {
      emit(const PokemonDetailsState.error());
    }
  }
}
