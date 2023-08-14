import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon/features/pokemons/blocs/pokemon_details_cubit/pokemon_details_cubit.dart';

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
                            children: <Widget>[
                              const SizedBox(
                                height: 70.0,
                              ),
                              Text(
                                pokemon.name,
                                style: const TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Height: ${pokemon.height}"),
                              Text("Weight: ${pokemon.weight}"),
                              const Text(
                                "Types",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: pokemon.types
                                    .map(
                                      (t) => FilterChip(
                                          backgroundColor: Colors.amber,
                                          label: Text(t.type.name,
                                              style: const TextStyle(
                                                  color: Colors.white)),
                                          onSelected: (b) {}),
                                    )
                                    .toList(),
                              ),

                              pokemon.species.name == pokemon.name
                                  ? Text(pokemon.species.name)
                                  : const Text("This is not the final form"),

                              const Text("Abilities",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: pokemon.abilities
                                    .map((t) => FilterChip(
                                        backgroundColor: Colors.red,
                                        label: Text(
                                          t.ability.name,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        onSelected: (b) {
                                          print(b);
                                        }))
                                    .toList(),
                              ),
                              // Text("Weakness",
                              //     style: TextStyle(fontWeight: FontWeight.bold)),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //   children: pokemon.weaknesses
                              //       .map((t) => FilterChip(
                              //           backgroundColor: Colors.red,
                              //           label: Text(
                              //             t,
                              //             style: TextStyle(color: Colors.white),
                              //           ),
                              //           onSelected: (b) {}))
                              //       .toList(),
                              // ),
                              const Text("Next Evolution",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //   children: pokemon.nextEvolution == null
                              //       ? <Widget>[Text("This is the final form")]
                              //       : pokemon.nextEvolution
                              //           .map((n) => FilterChip(
                              //                 backgroundColor: Colors.green,
                              //                 label: Text(
                              //                   n.name,
                              //                   style: TextStyle(color: Colors.white),
                              //                 ),
                              //                 onSelected: (b) {},
                              //               ))
                              //           .toList(),
                              // )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 200.0,
                          width: 200.0,
                          child: SvgPicture.network(
                            pokemon.sprites.other.dreamWorld.frontDefault,
                            placeholderBuilder: (BuildContext context) =>
                                const Padding(
                              padding: EdgeInsets.all(30.0),
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              error: () => const Center(
                    child: Text('Error'),
                  ),
              initial: () => const Center(
                    child: CircularProgressIndicator(),
                  ));
        },
      ),
    );
  }
}
