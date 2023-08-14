// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_sprites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) {
  return _PokemonSprites.fromJson(json);
}

/// @nodoc
mixin _$PokemonSprites {
  @JsonKey(name: 'back_default')
  String get backDefaultImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny')
  String get backShinyImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_default')
  String get frontDefaultImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String get frontShinyImageUrl => throw _privateConstructorUsedError;
  Other get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpritesCopyWith<PokemonSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesCopyWith<$Res> {
  factory $PokemonSpritesCopyWith(
          PokemonSprites value, $Res Function(PokemonSprites) then) =
      _$PokemonSpritesCopyWithImpl<$Res, PokemonSprites>;
  @useResult
  $Res call(
      {@JsonKey(name: 'back_default') String backDefaultImageUrl,
      @JsonKey(name: 'back_shiny') String backShinyImageUrl,
      @JsonKey(name: 'front_default') String frontDefaultImageUrl,
      @JsonKey(name: 'front_shiny') String frontShinyImageUrl,
      Other other});

  $OtherCopyWith<$Res> get other;
}

/// @nodoc
class _$PokemonSpritesCopyWithImpl<$Res, $Val extends PokemonSprites>
    implements $PokemonSpritesCopyWith<$Res> {
  _$PokemonSpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefaultImageUrl = null,
    Object? backShinyImageUrl = null,
    Object? frontDefaultImageUrl = null,
    Object? frontShinyImageUrl = null,
    Object? other = null,
  }) {
    return _then(_value.copyWith(
      backDefaultImageUrl: null == backDefaultImageUrl
          ? _value.backDefaultImageUrl
          : backDefaultImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backShinyImageUrl: null == backShinyImageUrl
          ? _value.backShinyImageUrl
          : backShinyImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefaultImageUrl: null == frontDefaultImageUrl
          ? _value.frontDefaultImageUrl
          : frontDefaultImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      frontShinyImageUrl: null == frontShinyImageUrl
          ? _value.frontShinyImageUrl
          : frontShinyImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherCopyWith<$Res> get other {
    return $OtherCopyWith<$Res>(_value.other, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonSpritesCopyWith<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  factory _$$_PokemonSpritesCopyWith(
          _$_PokemonSprites value, $Res Function(_$_PokemonSprites) then) =
      __$$_PokemonSpritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'back_default') String backDefaultImageUrl,
      @JsonKey(name: 'back_shiny') String backShinyImageUrl,
      @JsonKey(name: 'front_default') String frontDefaultImageUrl,
      @JsonKey(name: 'front_shiny') String frontShinyImageUrl,
      Other other});

  @override
  $OtherCopyWith<$Res> get other;
}

/// @nodoc
class __$$_PokemonSpritesCopyWithImpl<$Res>
    extends _$PokemonSpritesCopyWithImpl<$Res, _$_PokemonSprites>
    implements _$$_PokemonSpritesCopyWith<$Res> {
  __$$_PokemonSpritesCopyWithImpl(
      _$_PokemonSprites _value, $Res Function(_$_PokemonSprites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefaultImageUrl = null,
    Object? backShinyImageUrl = null,
    Object? frontDefaultImageUrl = null,
    Object? frontShinyImageUrl = null,
    Object? other = null,
  }) {
    return _then(_$_PokemonSprites(
      backDefaultImageUrl: null == backDefaultImageUrl
          ? _value.backDefaultImageUrl
          : backDefaultImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backShinyImageUrl: null == backShinyImageUrl
          ? _value.backShinyImageUrl
          : backShinyImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefaultImageUrl: null == frontDefaultImageUrl
          ? _value.frontDefaultImageUrl
          : frontDefaultImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      frontShinyImageUrl: null == frontShinyImageUrl
          ? _value.frontShinyImageUrl
          : frontShinyImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonSprites implements _PokemonSprites {
  _$_PokemonSprites(
      {@JsonKey(name: 'back_default') required this.backDefaultImageUrl,
      @JsonKey(name: 'back_shiny') required this.backShinyImageUrl,
      @JsonKey(name: 'front_default') required this.frontDefaultImageUrl,
      @JsonKey(name: 'front_shiny') required this.frontShinyImageUrl,
      required this.other});

  factory _$_PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonSpritesFromJson(json);

  @override
  @JsonKey(name: 'back_default')
  final String backDefaultImageUrl;
  @override
  @JsonKey(name: 'back_shiny')
  final String backShinyImageUrl;
  @override
  @JsonKey(name: 'front_default')
  final String frontDefaultImageUrl;
  @override
  @JsonKey(name: 'front_shiny')
  final String frontShinyImageUrl;
  @override
  final Other other;

  @override
  String toString() {
    return 'PokemonSprites(backDefaultImageUrl: $backDefaultImageUrl, backShinyImageUrl: $backShinyImageUrl, frontDefaultImageUrl: $frontDefaultImageUrl, frontShinyImageUrl: $frontShinyImageUrl, other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonSprites &&
            (identical(other.backDefaultImageUrl, backDefaultImageUrl) ||
                other.backDefaultImageUrl == backDefaultImageUrl) &&
            (identical(other.backShinyImageUrl, backShinyImageUrl) ||
                other.backShinyImageUrl == backShinyImageUrl) &&
            (identical(other.frontDefaultImageUrl, frontDefaultImageUrl) ||
                other.frontDefaultImageUrl == frontDefaultImageUrl) &&
            (identical(other.frontShinyImageUrl, frontShinyImageUrl) ||
                other.frontShinyImageUrl == frontShinyImageUrl) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backDefaultImageUrl,
      backShinyImageUrl, frontDefaultImageUrl, frontShinyImageUrl, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonSpritesCopyWith<_$_PokemonSprites> get copyWith =>
      __$$_PokemonSpritesCopyWithImpl<_$_PokemonSprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonSpritesToJson(
      this,
    );
  }
}

abstract class _PokemonSprites implements PokemonSprites {
  factory _PokemonSprites(
      {@JsonKey(name: 'back_default') required final String backDefaultImageUrl,
      @JsonKey(name: 'back_shiny') required final String backShinyImageUrl,
      @JsonKey(name: 'front_default')
      required final String frontDefaultImageUrl,
      @JsonKey(name: 'front_shiny') required final String frontShinyImageUrl,
      required final Other other}) = _$_PokemonSprites;

  factory _PokemonSprites.fromJson(Map<String, dynamic> json) =
      _$_PokemonSprites.fromJson;

  @override
  @JsonKey(name: 'back_default')
  String get backDefaultImageUrl;
  @override
  @JsonKey(name: 'back_shiny')
  String get backShinyImageUrl;
  @override
  @JsonKey(name: 'front_default')
  String get frontDefaultImageUrl;
  @override
  @JsonKey(name: 'front_shiny')
  String get frontShinyImageUrl;
  @override
  Other get other;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonSpritesCopyWith<_$_PokemonSprites> get copyWith =>
      throw _privateConstructorUsedError;
}
