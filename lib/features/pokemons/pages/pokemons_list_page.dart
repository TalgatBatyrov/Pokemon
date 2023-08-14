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

/// Закомментированный код выше для работы с Bloc

import 'package:flutter/material.dart';
import 'package:pokemon/features/pokemons/widgets/pokemons_card_list.dart';
import '../../../app_widgets/theme_toggle_button.dart';

class PokemonsListPage extends StatefulWidget {
  const PokemonsListPage({super.key});

  @override
  State<PokemonsListPage> createState() => _PokemonsListPageState();
}

class _PokemonsListPageState extends State<PokemonsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons'),
        actions: const [ThemeToggleButton()],
      ),
      body: const PokemonsCardList(),
    );
  }
}
