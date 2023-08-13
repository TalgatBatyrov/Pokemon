import 'package:pokemon/repositories/pokemon/models/pokemon/pokemon.dart';
import 'package:pokemon/repositories/pokemon/models/pokemon_details/pokemon_details.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAllPokemons();

  Future<PokemonDetails> getPokemon(String name);

  // Future<dynamic> getPokemonSpecies(String name);

  // Future<dynamic> getPokemonEvolutionChain(String url);
}
