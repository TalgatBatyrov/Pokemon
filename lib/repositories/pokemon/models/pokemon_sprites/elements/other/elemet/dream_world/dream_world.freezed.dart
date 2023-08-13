// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dream_world.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) {
  return _DreamWorld.fromJson(json);
}

/// @nodoc
mixin _$DreamWorld {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_female')
  String? get frontFemale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DreamWorldCopyWith<DreamWorld> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamWorldCopyWith<$Res> {
  factory $DreamWorldCopyWith(
          DreamWorld value, $Res Function(DreamWorld) then) =
      _$DreamWorldCopyWithImpl<$Res, DreamWorld>;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefault,
      @JsonKey(name: 'front_female') String? frontFemale});
}

/// @nodoc
class _$DreamWorldCopyWithImpl<$Res, $Val extends DreamWorld>
    implements $DreamWorldCopyWith<$Res> {
  _$DreamWorldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontFemale = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DreamWorldCopyWith<$Res>
    implements $DreamWorldCopyWith<$Res> {
  factory _$$_DreamWorldCopyWith(
          _$_DreamWorld value, $Res Function(_$_DreamWorld) then) =
      __$$_DreamWorldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefault,
      @JsonKey(name: 'front_female') String? frontFemale});
}

/// @nodoc
class __$$_DreamWorldCopyWithImpl<$Res>
    extends _$DreamWorldCopyWithImpl<$Res, _$_DreamWorld>
    implements _$$_DreamWorldCopyWith<$Res> {
  __$$_DreamWorldCopyWithImpl(
      _$_DreamWorld _value, $Res Function(_$_DreamWorld) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontFemale = freezed,
  }) {
    return _then(_$_DreamWorld(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontFemale: freezed == frontFemale
          ? _value.frontFemale
          : frontFemale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DreamWorld implements _DreamWorld {
  const _$_DreamWorld(
      {@JsonKey(name: 'front_default') required this.frontDefault,
      @JsonKey(name: 'front_female') required this.frontFemale});

  factory _$_DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$$_DreamWorldFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;
  @override
  @JsonKey(name: 'front_female')
  final String? frontFemale;

  @override
  String toString() {
    return 'DreamWorld(frontDefault: $frontDefault, frontFemale: $frontFemale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DreamWorld &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontFemale, frontFemale) ||
                other.frontFemale == frontFemale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontFemale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DreamWorldCopyWith<_$_DreamWorld> get copyWith =>
      __$$_DreamWorldCopyWithImpl<_$_DreamWorld>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DreamWorldToJson(
      this,
    );
  }
}

abstract class _DreamWorld implements DreamWorld {
  const factory _DreamWorld(
          {@JsonKey(name: 'front_default') required final String frontDefault,
          @JsonKey(name: 'front_female') required final String? frontFemale}) =
      _$_DreamWorld;

  factory _DreamWorld.fromJson(Map<String, dynamic> json) =
      _$_DreamWorld.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(name: 'front_female')
  String? get frontFemale;
  @override
  @JsonKey(ignore: true)
  _$$_DreamWorldCopyWith<_$_DreamWorld> get copyWith =>
      throw _privateConstructorUsedError;
}
