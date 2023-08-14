import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/repositories/pokemon/models/pokemon/pokemon.dart';

part 'main_result.freezed.dart';
part 'main_result.g.dart';

@freezed
class MainResult with _$MainResult {
  const factory MainResult({
    required int count,
    required String? next,
    required String? previous,
    @JsonKey(name: 'results') required List<Pokemon> pokemons,
  }) = _MainResult;

  factory MainResult.fromJson(Map<String, dynamic> json) =>
      _$MainResultFromJson(json);
}
