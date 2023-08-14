import 'dart:math';

import 'package:flutter/material.dart';

import '../../../models/pokemon/pokemon.dart';
import 'pokemon_card.dart';

class PokemonsCardList extends StatefulWidget {
  final List<Pokemon> pokemons;

  const PokemonsCardList({
    super.key,
    required this.pokemons,
  });

  @override
  State<PokemonsCardList> createState() => _PokemonsCardListState();
}

class _PokemonsCardListState extends State<PokemonsCardList>
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
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: widget.pokemons.length,
        itemBuilder: (context, index) {
          final pokemon = widget.pokemons[index];

          return PokemonCard(
            pokemon: pokemon,
            animation: _animation,
          );
        },
      ),
    );
  }
}
