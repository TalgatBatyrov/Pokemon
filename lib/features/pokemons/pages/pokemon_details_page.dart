import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/app_widgets/app_error.dart';
import 'package:pokemon/app_widgets/app_loading.dart';
import 'package:pokemon/extensions/app_extensions.dart';
import '../blocs/pokemon_details/pokemon_details_cubit.dart';
import '../widgets/details_image.dart';
import '../widgets/property_list.dart';

@RoutePage()
class PokemonDetailsPage extends StatefulWidget {
  final String id;
  const PokemonDetailsPage({super.key, required this.id});

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  @override
  void initState() {
    context.read<PokemonDetailsCubit>().getPokemonDetails(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
        builder: (context, state) {
          return state.when(
            loaded: (pokemon) => Stack(
              children: [
                Positioned(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width - 20,
                  left: 10.0,
                  top: MediaQuery.of(context).size.height * 0.1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(height: 70.0),
                        Text(
                          pokemon.name.capitalize(),
                          style: const TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              color: Colors.green,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Height: ${pokemon.height}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Weight: ${pokemon.weight}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        PropertyList(
                          names: pokemon.types.map((e) => e.type.name).toList(),
                          title: "Types",
                        ),
                        PropertyList(
                          names: pokemon.abilities
                              .map((e) => e.ability.name)
                              .toList(),
                          title: "Abilities",
                        ),
                      ],
                    ),
                  ),
                ),
                DetailImage(url: pokemon.sprites.other.dreamWorld.frontDefault)
              ],
            ),
            loading: () => const AppLoading(),
            error: (message) => AppError(message: message),
          );
        },
      ),
    );
  }
}
