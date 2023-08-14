import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/pokemons/pages/pokemon_details_page.dart';
import '../features/pokemons/pages/pokemons_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PokemonsListRoute.page, initial: true),
        AutoRoute(page: PokemonDetailsRoute.page),
      ];
}
