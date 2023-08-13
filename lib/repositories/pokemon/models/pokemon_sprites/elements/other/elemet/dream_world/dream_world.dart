import 'package:freezed_annotation/freezed_annotation.dart';

part 'dream_world.freezed.dart';
part 'dream_world.g.dart';

@freezed
class DreamWorld with _$DreamWorld {
  const factory DreamWorld({
    @JsonKey(name: 'front_default') required String frontDefault,
    @JsonKey(name: 'front_female') required String? frontFemale,
  }) = _DreamWorld;

  factory DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldFromJson(json);
}
