import 'package:freezed_annotation/freezed_annotation.dart';

import '../type_model.dart/type_model.dart';

part 'ability_item.freezed.dart';
part 'ability_item.g.dart';

@freezed
class AbilityItem with _$AbilityItem {
  const factory AbilityItem({
    required TypeModel ability,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
  }) = _AbilityItem;

  factory AbilityItem.fromJson(Map<String, dynamic> json) =>
      _$AbilityItemFromJson(json);
}
