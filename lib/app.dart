import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/features/pokemons/blocs/pokemons/pokemon_cubit.dart';
import 'package:pokemon/repositories/pokemon/pokemon_repository.dart';
import 'package:pokemon/router/app_router.dart';

import 'features/pokemons/blocs/pokemon_details_cubit/pokemon_details_cubit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();
  final _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => PokemonRepository(_dio),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                PokemonCubit(context.read<PokemonRepository>()),
          ),
          BlocProvider(
            create: (context) => PokemonDetailsCubit(
              context.read<PokemonRepository>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
