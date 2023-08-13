import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon/features/pokemons/blocs/pokemon_cubit.dart';

import '../../../router/app_router.dart';

@RoutePage()
class PokemonsListPage extends StatelessWidget {
  const PokemonsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
      body: BlocBuilder<PokemonCubit, PokemonState>(
        builder: (context, state) {
          return state.map(
            loading: (state) =>
                const Center(child: CircularProgressIndicator()),
            loaded: (state) => GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: state.pokemons.length,
              itemBuilder: (context, index) {
                final pokemon = state.pokemons[index];
                return GestureDetector(
                  onTap: () => context.router.push(
                    PokemonDetailsRoute(pokemon: pokemon),
                  ),
                  child: Hero(
                    tag: pokemon.sprites.backDefaultImageUrl,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.network(
                                pokemon.sprites.other.dreamWorld.frontDefault,
                                placeholderBuilder: (BuildContext context) =>
                                    const Padding(
                                  padding: EdgeInsets.all(30.0),
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            pokemon.name.split('').first.toUpperCase() +
                                pokemon.name.substring(1),
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            error: (state) => Center(child: Text(state.message)),
            empty: (state) => const Center(child: Text('No Pokemons')),
          );
        },
      ),
    );
  }
}
