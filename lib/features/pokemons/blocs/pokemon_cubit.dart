import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/repositories/pokemon/i_pokemon_repository.dart';

import '../../../repositories/pokemon/models/pokemon_details/pokemon_details.dart';

part 'pokemon_cubit.freezed.dart';

part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  final IPokemonRepository _pokemonRepository;
  PokemonCubit(this._pokemonRepository) : super(const PokemonState.loading());

  Future<void> getPokemons() async {
    try {
      final List<PokemonDetails> pokemonsList = [];
      emit(const PokemonState.loading());
      final pokemons = await _pokemonRepository.getAllPokemons();

      if (pokemons.isEmpty) {
        emit(const PokemonState.empty());
        return;
      }

      for (var pokemon in pokemons) {
        final response = await _pokemonRepository.getPokemon(pokemon.name);

        pokemonsList.add(response);
      }

      emit(PokemonState.loaded(pokemons: pokemonsList));
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }
}
