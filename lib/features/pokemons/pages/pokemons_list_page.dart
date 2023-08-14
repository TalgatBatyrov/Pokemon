// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pokemon/app_widgets/app_empty.dart';
// import 'package:pokemon/app_widgets/app_loading.dart';
// import 'package:pokemon/features/pokemons/blocs/pokemons/pokemon_cubit.dart';
// import 'package:pokemon/features/pokemons/widgets/pagination_arrow.dart';
// import 'package:pokemon/features/pokemons/widgets/pokemons_card_list.dart';

// import '../../../app_widgets/app_error.dart';
// import '../../../app_widgets/theme_toggle_button.dart';

// @RoutePage()
// class PokemonsListPage extends StatelessWidget {
//   const PokemonsListPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Pokemons'),
//         actions: const [
//           ThemeToggleButton(),
//         ],
//       ),
//       body: BlocBuilder<PokemonCubit, PokemonState>(
//         builder: (context, state) {
//           return state.when(
//             loading: () => const AppLoading(),
//             loaded: (mainResult) => Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     PaginationArrow(url: mainResult.previous, isNext: false),
//                     PaginationArrow(url: mainResult.next, isNext: true),
//                     Text(mainResult.count.toString()),
//                   ],
//                 ),
//                 PokemonsCardList(pokemons: mainResult.pokemons),
//               ],
//             ),
//             error: (message) => AppError(message: message),
//             empty: () => const AppEmpty(),
//           );
//         },
//       ),
//     );
//   }
// }

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokemon/models/pokemon/pokemon.dart';
import 'package:pokemon/repositories/pokemon_repository.dart';

import '../widgets/pokemon_card.dart';

class PokemonsListPage extends StatefulWidget {
  const PokemonsListPage({super.key});

  @override
  State<PokemonsListPage> createState() => _PokemonsListPageState();
}

class _PokemonsListPageState extends State<PokemonsListPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final _pokemonRepository = PokemonRepository(Dio());
  static const _pageSize = 20;

  final PagingController<int, Pokemon> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: 2 * pi).animate(_controller);

    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    _controller.repeat();

    super.initState();
  }

  String next = 'https://pokeapi.co/api/v2/pokemon';

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await _pokemonRepository.getAllPokemons1(next);

      next = newItems.next ?? '';
      final isLastPage = newItems.pokemons.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems.pokemons);
      } else {
        final nextPageKey = pageKey + newItems.pokemons.length;
        _pagingController.appendPage(newItems.pokemons, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagedGridView<int, Pokemon>(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Pokemon>(
          itemBuilder: (context, item, index) => PokemonCard(
            animation: _animation,
            pokemon: item,
          ),
        ),
      ),
    );
  }
}
