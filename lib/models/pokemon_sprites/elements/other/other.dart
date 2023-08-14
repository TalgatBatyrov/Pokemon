import 'package:freezed_annotation/freezed_annotation.dart';

import 'elemet/dream_world/dream_world.dart';
import 'elemet/official_art_work/official_art_work.dart';

part 'other.freezed.dart';
part 'other.g.dart';

@freezed
class Other with _$Other {
  const factory Other({
    @JsonKey(name: 'dream_world') required DreamWorld dreamWorld,
    @JsonKey(name: 'official-artwork') required OfficialArtwork officialArtwork,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}
