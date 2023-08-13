// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbilityItem _$AbilityItemFromJson(Map<String, dynamic> json) {
  return _AbilityItem.fromJson(json);
}

/// @nodoc
mixin _$AbilityItem {
  TypeModel get ability => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  int get slot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityItemCopyWith<AbilityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityItemCopyWith<$Res> {
  factory $AbilityItemCopyWith(
          AbilityItem value, $Res Function(AbilityItem) then) =
      _$AbilityItemCopyWithImpl<$Res, AbilityItem>;
  @useResult
  $Res call(
      {TypeModel ability, @JsonKey(name: 'is_hidden') bool isHidden, int slot});

  $TypeModelCopyWith<$Res> get ability;
}

/// @nodoc
class _$AbilityItemCopyWithImpl<$Res, $Val extends AbilityItem>
    implements $AbilityItemCopyWith<$Res> {
  _$AbilityItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as TypeModel,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<$Res> get ability {
    return $TypeModelCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AbilityItemCopyWith<$Res>
    implements $AbilityItemCopyWith<$Res> {
  factory _$$_AbilityItemCopyWith(
          _$_AbilityItem value, $Res Function(_$_AbilityItem) then) =
      __$$_AbilityItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TypeModel ability, @JsonKey(name: 'is_hidden') bool isHidden, int slot});

  @override
  $TypeModelCopyWith<$Res> get ability;
}

/// @nodoc
class __$$_AbilityItemCopyWithImpl<$Res>
    extends _$AbilityItemCopyWithImpl<$Res, _$_AbilityItem>
    implements _$$_AbilityItemCopyWith<$Res> {
  __$$_AbilityItemCopyWithImpl(
      _$_AbilityItem _value, $Res Function(_$_AbilityItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_$_AbilityItem(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as TypeModel,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbilityItem implements _AbilityItem {
  const _$_AbilityItem(
      {required this.ability,
      @JsonKey(name: 'is_hidden') required this.isHidden,
      required this.slot});

  factory _$_AbilityItem.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityItemFromJson(json);

  @override
  final TypeModel ability;
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final int slot;

  @override
  String toString() {
    return 'AbilityItem(ability: $ability, isHidden: $isHidden, slot: $slot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbilityItem &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability, isHidden, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilityItemCopyWith<_$_AbilityItem> get copyWith =>
      __$$_AbilityItemCopyWithImpl<_$_AbilityItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityItemToJson(
      this,
    );
  }
}

abstract class _AbilityItem implements AbilityItem {
  const factory _AbilityItem(
      {required final TypeModel ability,
      @JsonKey(name: 'is_hidden') required final bool isHidden,
      required final int slot}) = _$_AbilityItem;

  factory _AbilityItem.fromJson(Map<String, dynamic> json) =
      _$_AbilityItem.fromJson;

  @override
  TypeModel get ability;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  int get slot;
  @override
  @JsonKey(ignore: true)
  _$$_AbilityItemCopyWith<_$_AbilityItem> get copyWith =>
      throw _privateConstructorUsedError;
}
