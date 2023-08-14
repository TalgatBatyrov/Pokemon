// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainResult _$MainResultFromJson(Map<String, dynamic> json) {
  return _MainResult.fromJson(json);
}

/// @nodoc
mixin _$MainResult {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Pokemon> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainResultCopyWith<MainResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainResultCopyWith<$Res> {
  factory $MainResultCopyWith(
          MainResult value, $Res Function(MainResult) then) =
      _$MainResultCopyWithImpl<$Res, MainResult>;
  @useResult
  $Res call({int count, String? next, String? previous, List<Pokemon> results});
}

/// @nodoc
class _$MainResultCopyWithImpl<$Res, $Val extends MainResult>
    implements $MainResultCopyWith<$Res> {
  _$MainResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainResultCopyWith<$Res>
    implements $MainResultCopyWith<$Res> {
  factory _$$_MainResultCopyWith(
          _$_MainResult value, $Res Function(_$_MainResult) then) =
      __$$_MainResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String? next, String? previous, List<Pokemon> results});
}

/// @nodoc
class __$$_MainResultCopyWithImpl<$Res>
    extends _$MainResultCopyWithImpl<$Res, _$_MainResult>
    implements _$$_MainResultCopyWith<$Res> {
  __$$_MainResultCopyWithImpl(
      _$_MainResult _value, $Res Function(_$_MainResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_MainResult(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainResult implements _MainResult {
  const _$_MainResult(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<Pokemon> results})
      : _results = results;

  factory _$_MainResult.fromJson(Map<String, dynamic> json) =>
      _$$_MainResultFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Pokemon> _results;
  @override
  List<Pokemon> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MainResult(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainResult &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainResultCopyWith<_$_MainResult> get copyWith =>
      __$$_MainResultCopyWithImpl<_$_MainResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainResultToJson(
      this,
    );
  }
}

abstract class _MainResult implements MainResult {
  const factory _MainResult(
      {required final int count,
      required final String? next,
      required final String? previous,
      required final List<Pokemon> results}) = _$_MainResult;

  factory _MainResult.fromJson(Map<String, dynamic> json) =
      _$_MainResult.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Pokemon> get results;
  @override
  @JsonKey(ignore: true)
  _$$_MainResultCopyWith<_$_MainResult> get copyWith =>
      throw _privateConstructorUsedError;
}
