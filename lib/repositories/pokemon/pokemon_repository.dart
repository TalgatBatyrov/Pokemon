import 'package:dio/dio.dart';
import 'package:pokemon/repositories/pokemon/i_pokemon_repository.dart';
import 'package:pokemon/repositories/pokemon/models/main_result/main_result.dart';
import 'package:pokemon/repositories/pokemon/models/pokemon/pokemon.dart';
import 'package:pokemon/repositories/pokemon/models/pokemon_details/pokemon_details.dart';

class PokemonRepository implements IPokemonRepository {
  final Dio _dio;

  PokemonRepository(this._dio);

  @override
  Future<MainResult> getAllPokemons1(String url) async {
    final response = await _dio.get(url);
    final mainResult = MainResult.fromJson(response.data);
    return mainResult;
  }

  @override
  Future<List<Pokemon>> getAllPokemons(String url) async {
    final response = await _dio.get(url);
    final results = List<Map<String, dynamic>>.from(response.data['results']);
    final pokemons = results.map((e) => Pokemon.fromJson(e)).toList();
    return pokemons;
  }

  @override
  Future<PokemonDetails> getPokemon(String id) async {
    final response = await _dio.get('https://pokeapi.co/api/v2/pokemon/$id');
    final pokemon = PokemonDetails.fromJson(response.data);
    return pokemon;
  }
}
