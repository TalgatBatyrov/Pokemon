import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/features/pokemons/blocs/pokemon_cubit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
      body: BlocBuilder<PokemonCubit, PokemonState>(
        builder: (context, state) {
          return state.map(
            loading: (state) =>
                const Center(child: CircularProgressIndicator()),
            loaded: (state) => ListView.builder(
              itemCount: state.pokemons.length,
              itemBuilder: (context, index) {
                final pokemon = state.pokemons[index];
                return ListTile(
                  leading: Image.network(pokemon.sprites.frontDefaultImageUrl),
                  title: Text(pokemon.name),
                  subtitle: Column(
                    children: [
                      const SizedBox(width: 8),
                      Text(pokemon.types.first.type.name),
                    ],
                  ),
                  trailing: Image.network(pokemon.sprites.frontShinyImageUrl),
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
