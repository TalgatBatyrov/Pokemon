import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/repositories/i_pokemon_repository.dart';

import '../../../../models/main_result/main_result.dart';

part 'pokemon_cubit.freezed.dart';
part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  final IPokemonRepository _pokemonRepository;
  PokemonCubit(this._pokemonRepository) : super(const PokemonState.loading()) {
    // getPokemons('https://pokeapi.co/api/v2/pokemon');
  }

  Future<void> getPokemons(String url) async {
    try {
      emit(const PokemonState.loading());
      final mainResult = await _pokemonRepository.getAllPokemons1(url);

      emit(PokemonState.loaded(response: mainResult));
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }
}
