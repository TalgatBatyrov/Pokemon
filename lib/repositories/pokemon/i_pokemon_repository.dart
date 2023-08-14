import 'package:pokemon/repositories/pokemon/models/main_result/main_result.dart';
import 'package:pokemon/repositories/pokemon/models/pokemon/pokemon.dart';
import 'package:pokemon/repositories/pokemon/models/pokemon_details/pokemon_details.dart';

abstract class IPokemonRepository {
  Future<MainResult> getAllPokemons1(String url);
  Future<List<Pokemon>> getAllPokemons(String url);

  Future<PokemonDetails> getPokemon(String name);

  // Future<dynamic> getPokemonSpecies(String name);

  // Future<dynamic> getPokemonEvolutionChain(String url);
}
