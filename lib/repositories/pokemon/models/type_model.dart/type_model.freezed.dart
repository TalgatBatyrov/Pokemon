// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) {
  return _TypeModel.fromJson(json);
}

/// @nodoc
mixin _$TypeModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeModelCopyWith<TypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeModelCopyWith<$Res> {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) then) =
      _$TypeModelCopyWithImpl<$Res, TypeModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypeModelCopyWithImpl<$Res, $Val extends TypeModel>
    implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TypeModelCopyWith<$Res> implements $TypeModelCopyWith<$Res> {
  factory _$$_TypeModelCopyWith(
          _$_TypeModel value, $Res Function(_$_TypeModel) then) =
      __$$_TypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_TypeModelCopyWithImpl<$Res>
    extends _$TypeModelCopyWithImpl<$Res, _$_TypeModel>
    implements _$$_TypeModelCopyWith<$Res> {
  __$$_TypeModelCopyWithImpl(
      _$_TypeModel _value, $Res Function(_$_TypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_TypeModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypeModel implements _TypeModel {
  const _$_TypeModel({required this.name, required this.url});

  factory _$_TypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TypeModelFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TypeModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeModelCopyWith<_$_TypeModel> get copyWith =>
      __$$_TypeModelCopyWithImpl<_$_TypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeModelToJson(
      this,
    );
  }
}

abstract class _TypeModel implements TypeModel {
  const factory _TypeModel(
      {required final String name, required final String url}) = _$_TypeModel;

  factory _TypeModel.fromJson(Map<String, dynamic> json) =
      _$_TypeModel.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_TypeModelCopyWith<_$_TypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
