// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonDetails _$PokemonDetailsFromJson(Map<String, dynamic> json) {
  return _PokemonDetails.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetails {
  List<AbilityItem> get abilities => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int get experience => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Species get species => throw _privateConstructorUsedError;
  PokemonSprites get sprites => throw _privateConstructorUsedError;
  List<PokemonType> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailsCopyWith<PokemonDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsCopyWith<$Res> {
  factory $PokemonDetailsCopyWith(
          PokemonDetails value, $Res Function(PokemonDetails) then) =
      _$PokemonDetailsCopyWithImpl<$Res, PokemonDetails>;
  @useResult
  $Res call(
      {List<AbilityItem> abilities,
      int id,
      @JsonKey(name: 'base_experience') int experience,
      int height,
      int weight,
      String name,
      Species species,
      PokemonSprites sprites,
      List<PokemonType> types});

  $SpeciesCopyWith<$Res> get species;
  $PokemonSpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDetailsCopyWithImpl<$Res, $Val extends PokemonDetails>
    implements $PokemonDetailsCopyWith<$Res> {
  _$PokemonDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilities = null,
    Object? id = null,
    Object? experience = null,
    Object? height = null,
    Object? weight = null,
    Object? name = null,
    Object? species = null,
    Object? sprites = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityItem>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get species {
    return $SpeciesCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesCopyWith<$Res> get sprites {
    return $PokemonSpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonDetailsCopyWith<$Res>
    implements $PokemonDetailsCopyWith<$Res> {
  factory _$$_PokemonDetailsCopyWith(
          _$_PokemonDetails value, $Res Function(_$_PokemonDetails) then) =
      __$$_PokemonDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AbilityItem> abilities,
      int id,
      @JsonKey(name: 'base_experience') int experience,
      int height,
      int weight,
      String name,
      Species species,
      PokemonSprites sprites,
      List<PokemonType> types});

  @override
  $SpeciesCopyWith<$Res> get species;
  @override
  $PokemonSpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$_PokemonDetailsCopyWithImpl<$Res>
    extends _$PokemonDetailsCopyWithImpl<$Res, _$_PokemonDetails>
    implements _$$_PokemonDetailsCopyWith<$Res> {
  __$$_PokemonDetailsCopyWithImpl(
      _$_PokemonDetails _value, $Res Function(_$_PokemonDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abilities = null,
    Object? id = null,
    Object? experience = null,
    Object? height = null,
    Object? weight = null,
    Object? name = null,
    Object? species = null,
    Object? sprites = null,
    Object? types = null,
  }) {
    return _then(_$_PokemonDetails(
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityItem>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDetails implements _PokemonDetails {
  const _$_PokemonDetails(
      {required final List<AbilityItem> abilities,
      required this.id,
      @JsonKey(name: 'base_experience') required this.experience,
      required this.height,
      required this.weight,
      required this.name,
      required this.species,
      required this.sprites,
      required final List<PokemonType> types})
      : _abilities = abilities,
        _types = types;

  factory _$_PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDetailsFromJson(json);

  final List<AbilityItem> _abilities;
  @override
  List<AbilityItem> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final int id;
  @override
  @JsonKey(name: 'base_experience')
  final int experience;
  @override
  final int height;
  @override
  final int weight;
  @override
  final String name;
  @override
  final Species species;
  @override
  final PokemonSprites sprites;
  final List<PokemonType> _types;
  @override
  List<PokemonType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonDetails(abilities: $abilities, id: $id, experience: $experience, height: $height, weight: $weight, name: $name, species: $species, sprites: $sprites, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDetails &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_abilities),
      id,
      experience,
      height,
      weight,
      name,
      species,
      sprites,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonDetailsCopyWith<_$_PokemonDetails> get copyWith =>
      __$$_PokemonDetailsCopyWithImpl<_$_PokemonDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonDetailsToJson(
      this,
    );
  }
}

abstract class _PokemonDetails implements PokemonDetails {
  const factory _PokemonDetails(
      {required final List<AbilityItem> abilities,
      required final int id,
      @JsonKey(name: 'base_experience') required final int experience,
      required final int height,
      required final int weight,
      required final String name,
      required final Species species,
      required final PokemonSprites sprites,
      required final List<PokemonType> types}) = _$_PokemonDetails;

  factory _PokemonDetails.fromJson(Map<String, dynamic> json) =
      _$_PokemonDetails.fromJson;

  @override
  List<AbilityItem> get abilities;
  @override
  int get id;
  @override
  @JsonKey(name: 'base_experience')
  int get experience;
  @override
  int get height;
  @override
  int get weight;
  @override
  String get name;
  @override
  Species get species;
  @override
  PokemonSprites get sprites;
  @override
  List<PokemonType> get types;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDetailsCopyWith<_$_PokemonDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
