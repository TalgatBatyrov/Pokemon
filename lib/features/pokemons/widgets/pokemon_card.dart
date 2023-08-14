import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon/extensions/app_extensions.dart';

import '../../../models/pokemon/pokemon.dart';
import '../../../router/app_router.dart';

class PokemonCard extends StatelessWidget {
  final Animation<double> animation;
  final Pokemon pokemon;

  const PokemonCard({
    super.key,
    required this.animation,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    final pokemonId = pokemon.url.split('/').elementAt(6);
    return GestureDetector(
      onTap: () => context.router.push(
        PokemonDetailsRoute(id: pokemonId),
      ),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {
                    return Transform.scale(
                      scaleX: 1.0 +
                          0.2 *
                              sin(
                                animation.value + int.parse(pokemonId),
                              ),
                      scaleY: 1.0 +
                          0.2 *
                              sin(
                                animation.value + int.parse(pokemonId),
                              ),
                      origin: Offset(
                        0.0,
                        10.0 * sin(animation.value + int.parse(pokemonId)),
                      ),
                      child: SvgPicture.network(
                        pokemon.umageUrl,
                        placeholderBuilder: (BuildContext context) =>
                            const Padding(
                          padding: EdgeInsets.all(30.0),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Text(
              pokemon.name.capitalize(),
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
