import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/features/pokemons/blocs/pokemons/pokemon_cubit.dart';
import 'package:pokemon/repositories/pokemon_repository.dart';
import 'package:pokemon/router/app_router.dart';

import 'features/pokemons/blocs/pokemon_details/pokemon_details_cubit.dart';
import 'features/theme/theme_cubit.dart';
import 'features/theming/app_themes.dart';

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
          BlocProvider(create: (_) => ThemeCubit()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              themeMode: themeMode,
              theme: AppThemes.light,
              darkTheme: AppThemes.dark,
              title: 'Flutter Demo',
              routerConfig: _appRouter.config(),
            );
          },
        ),
      ),
    );
  }
}
