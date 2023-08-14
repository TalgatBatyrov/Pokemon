import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../models/pokemon/pokemon.dart';
import '../../../repositories/pokemon_repository.dart';
import 'pokemon_card.dart';

class PokemonsCardList extends StatefulWidget {
  // final List<Pokemon> pokemons;

  const PokemonsCardList({
    super.key,
    // required this.pokemons,
  });

  @override
  State<PokemonsCardList> createState() => _PokemonsCardListState();
}

class _PokemonsCardListState extends State<PokemonsCardList>
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
    return PagedGridView<int, Pokemon>(
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
    );
  }
}
