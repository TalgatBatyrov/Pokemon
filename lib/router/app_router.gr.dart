// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    PokemonDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PokemonDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    PokemonsListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PokemonsListPage(),
      );
    },
  };
}

/// generated route for
/// [PokemonDetailsPage]
class PokemonDetailsRoute extends PageRouteInfo<PokemonDetailsRouteArgs> {
  PokemonDetailsRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          PokemonDetailsRoute.name,
          args: PokemonDetailsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailsRoute';

  static const PageInfo<PokemonDetailsRouteArgs> page =
      PageInfo<PokemonDetailsRouteArgs>(name);
}

class PokemonDetailsRouteArgs {
  const PokemonDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'PokemonDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [PokemonsListPage]
class PokemonsListRoute extends PageRouteInfo<void> {
  const PokemonsListRoute({List<PageRouteInfo>? children})
      : super(
          PokemonsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PokemonsListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
