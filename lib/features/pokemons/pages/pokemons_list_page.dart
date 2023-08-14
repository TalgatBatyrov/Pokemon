import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon/features/pokemons/blocs/pokemon_cubit.dart';

import '../../../router/app_router.dart';

@RoutePage()
class PokemonsListPage extends StatefulWidget {
  const PokemonsListPage({super.key});

  @override
  State<PokemonsListPage> createState() => _PokemonsListPageState();
}

class _PokemonsListPageState extends State<PokemonsListPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: 2 * pi).animate(_controller);
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
      body: BlocBuilder<PokemonCubit, PokemonState>(
        builder: (context, state) {
          return state.map(
            loading: (state) =>
                const Center(child: CircularProgressIndicator()),
            loaded: (state) => Column(
              children: [
                if (state.previous != null)
                  IconButton(
                    onPressed: () {
                      if (state.previous != null) {
                        context
                            .read<PokemonCubit>()
                            .getPokemons(state.previous!);
                      }
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                if (state.next != null)
                  IconButton(
                    onPressed: () {
                      if (state.next != null) {
                        context.read<PokemonCubit>().getPokemons(state.next!);
                      }
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                                    child: AnimatedBuilder(
                                        animation: _animation,
                                        builder: (context, child) {
                                          return Transform.translate(
                                            offset: Offset(
                                              0.0,
                                              10.0 *
                                                  sin(
                                                    _animation.value + index,
                                                  ),
                                            ),
                                            child: SvgPicture.network(
                                              pokemon.sprites.other.dreamWorld
                                                  .frontDefault,
                                              placeholderBuilder:
                                                  (BuildContext context) =>
                                                      const Padding(
                                                padding: EdgeInsets.all(30.0),
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                                // Image.network(
                                //   pokemon.sprites.other.officialArtwork.frontDefault,
                                // ),
                                Text(
                                  '#${pokemon.id}',
                                  style: const TextStyle(fontSize: 20),
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
                ),
              ],
            ),
            error: (state) => Center(child: Text(state.message)),
            empty: (state) => const Center(child: Text('No Pokemons')),
          );
        },
      ),
    );
  }
}
