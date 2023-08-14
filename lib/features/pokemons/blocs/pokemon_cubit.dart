import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/repositories/pokemon/i_pokemon_repository.dart';
import '../../../repositories/pokemon/models/pokemon_details/pokemon_details.dart';

part 'pokemon_cubit.freezed.dart';
part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  final IPokemonRepository _pokemonRepository;
  PokemonCubit(this._pokemonRepository) : super(const PokemonState.loading()) {
    getPokemons('https://pokeapi.co/api/v2/pokemon');
  }

  final List<PokemonDetails> _pokemonsList = [];

  Future<void> getPokemons(String url) async {
    try {
      emit(const PokemonState.loading());

      final data = await _pokemonRepository.getAllPokemons1(url);

      if (data.results.isEmpty) {
        emit(const PokemonState.empty());
        return;
      }

      // for (var pokemon in data.results) {
      //   final response = await _pokemonRepository.getPokemon(pokemon.name);

      //   _pokemonsList.add(response);
      // }

      final pokemonDetailsFutures = data.results.map((pokemon) async {
        final response = await _pokemonRepository.getPokemon(pokemon.url);
        return response;
      }).toList();

      final pokemonDetailsList = await Future.wait(pokemonDetailsFutures);

      _pokemonsList.addAll(pokemonDetailsList);
      emit(PokemonState.loaded(
        next: data.next,
        count: data.count,
        previous: data.previous,
        pokemons: _pokemonsList,
      ));
    } catch (e) {
      emit(PokemonState.error(e.toString()));
    }
  }
}

  // Future<void> getPokemons(String url) async {
  //   try {
  //     final List<PokemonDetails> pokemonsList = [];
  //     emit(const PokemonState.loading());
  //     final pokemons = await _pokemonRepository.getAllPokemons(url);

  //     if (pokemons.isEmpty) {
  //       emit(const PokemonState.empty());
  //       return;
  //     }

  //     for (var pokemon in pokemons) {
  //       final response = await _pokemonRepository.getPokemon(pokemon.name);

  //       pokemonsList.add(response);
  //     }

  //     emit(PokemonState.loaded(pokemons: pokemonsList));
  //   } catch (e) {
  //     emit(PokemonState.error(e.toString()));
  //   }
  // }
// }
