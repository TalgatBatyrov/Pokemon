import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/app_widgets/app_empty.dart';
import 'package:pokemon/features/pokemons/blocs/pokemons/pokemon_cubit.dart';
import 'package:pokemon/features/pokemons/widgets/pagination_arrow.dart';
import 'package:pokemon/features/pokemons/widgets/pokemons_card_list.dart';

import '../../../app_widgets/app_error.dart';
import '../../../app_widgets/theme_toggle_button.dart';

@RoutePage()
class PokemonsListPage extends StatelessWidget {
  const PokemonsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons'),
        actions: const [
          ThemeToggleButton(),
        ],
      ),
      body: BlocBuilder<PokemonCubit, PokemonState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (response) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PaginationArrow(url: response.previous, isNext: false),
                    PaginationArrow(url: response.next, isNext: true),
                  ],
                ),
                PokemonsCardList(pokemons: response.pokemons),
              ],
            ),
            error: (message) => AppError(message: message),
            empty: () => const AppEmpty(),
          );
        },
      ),
    );
  }
}
