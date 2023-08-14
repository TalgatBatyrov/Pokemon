import 'package:freezed_annotation/freezed_annotation.dart';

part 'official_art_work.freezed.dart';
part 'official_art_work.g.dart';

@freezed
class OfficialArtwork with _$OfficialArtwork {
  const factory OfficialArtwork({
    @JsonKey(name: 'front_default') required String frontDefault,
    @JsonKey(name: 'front_shiny') required String frontShiny,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}
