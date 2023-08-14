import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/pokemons/pokemon_cubit.dart';

class PaginationArrow extends StatelessWidget {
  final String? url;
  final bool isNext;

  const PaginationArrow({
    super.key,
    this.url,
    required this.isNext,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: url != null
          ? () => context.read<PokemonCubit>().getPokemons(url!)
          : null,
      icon: Icon(
        isNext ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
      ),
    );
  }
}
