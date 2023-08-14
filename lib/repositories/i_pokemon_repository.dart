import '../models/main_result/main_result.dart';
import '../models/pokemon/pokemon.dart';
import '../models/pokemon_details/pokemon_details.dart';

abstract class IPokemonRepository {
  Future<MainResult> getAllPokemons1(String url);
  Future<List<Pokemon>> getAllPokemons(String url);

  Future<PokemonDetails> getPokemon(String id);
}
