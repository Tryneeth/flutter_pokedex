// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) {
  return _PokemonResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonResponse {
  int get height => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int get baseXP => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  List<StatResponse>? get stats => throw _privateConstructorUsedError;
  List<TypeResponse>? get types => throw _privateConstructorUsedError;
  ArtworkResponse get artwork => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonResponseCopyWith<PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseCopyWith<$Res> {
  factory $PokemonResponseCopyWith(
          PokemonResponse value, $Res Function(PokemonResponse) then) =
      _$PokemonResponseCopyWithImpl<$Res, PokemonResponse>;
  @useResult
  $Res call(
      {int height,
      int id,
      String name,
      int weight,
      @JsonKey(name: 'base_experience') int baseXP,
      int? order,
      List<StatResponse>? stats,
      List<TypeResponse>? types,
      ArtworkResponse artwork});

  $ArtworkResponseCopyWith<$Res> get artwork;
}

/// @nodoc
class _$PokemonResponseCopyWithImpl<$Res, $Val extends PokemonResponse>
    implements $PokemonResponseCopyWith<$Res> {
  _$PokemonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? baseXP = null,
    Object? order = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? artwork = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      baseXP: null == baseXP
          ? _value.baseXP
          : baseXP // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatResponse>?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeResponse>?,
      artwork: null == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as ArtworkResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtworkResponseCopyWith<$Res> get artwork {
    return $ArtworkResponseCopyWith<$Res>(_value.artwork, (value) {
      return _then(_value.copyWith(artwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonResponseImplCopyWith<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  factory _$$PokemonResponseImplCopyWith(_$PokemonResponseImpl value,
          $Res Function(_$PokemonResponseImpl) then) =
      __$$PokemonResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int height,
      int id,
      String name,
      int weight,
      @JsonKey(name: 'base_experience') int baseXP,
      int? order,
      List<StatResponse>? stats,
      List<TypeResponse>? types,
      ArtworkResponse artwork});

  @override
  $ArtworkResponseCopyWith<$Res> get artwork;
}

/// @nodoc
class __$$PokemonResponseImplCopyWithImpl<$Res>
    extends _$PokemonResponseCopyWithImpl<$Res, _$PokemonResponseImpl>
    implements _$$PokemonResponseImplCopyWith<$Res> {
  __$$PokemonResponseImplCopyWithImpl(
      _$PokemonResponseImpl _value, $Res Function(_$PokemonResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? baseXP = null,
    Object? order = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? artwork = null,
  }) {
    return _then(_$PokemonResponseImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      baseXP: null == baseXP
          ? _value.baseXP
          : baseXP // ignore: cast_nullable_to_non_nullable
              as int,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      stats: freezed == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatResponse>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeResponse>?,
      artwork: null == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as ArtworkResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$PokemonResponseImpl implements _PokemonResponse {
  const _$PokemonResponseImpl(
      {required this.height,
      required this.id,
      required this.name,
      required this.weight,
      @JsonKey(name: 'base_experience') required this.baseXP,
      this.order,
      final List<StatResponse>? stats,
      final List<TypeResponse>? types,
      required this.artwork})
      : _stats = stats,
        _types = types;

  factory _$PokemonResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonResponseImplFromJson(json);

  @override
  final int height;
  @override
  final int id;
  @override
  final String name;
  @override
  final int weight;
  @override
  @JsonKey(name: 'base_experience')
  final int baseXP;
  @override
  final int? order;
  final List<StatResponse>? _stats;
  @override
  List<StatResponse>? get stats {
    final value = _stats;
    if (value == null) return null;
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TypeResponse>? _types;
  @override
  List<TypeResponse>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ArtworkResponse artwork;

  @override
  String toString() {
    return 'PokemonResponse(height: $height, id: $id, name: $name, weight: $weight, baseXP: $baseXP, order: $order, stats: $stats, types: $types, artwork: $artwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResponseImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.baseXP, baseXP) || other.baseXP == baseXP) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.artwork, artwork) || other.artwork == artwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      height,
      id,
      name,
      weight,
      baseXP,
      order,
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_types),
      artwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResponseImplCopyWith<_$PokemonResponseImpl> get copyWith =>
      __$$PokemonResponseImplCopyWithImpl<_$PokemonResponseImpl>(
          this, _$identity);
}

abstract class _PokemonResponse implements PokemonResponse {
  const factory _PokemonResponse(
      {required final int height,
      required final int id,
      required final String name,
      required final int weight,
      @JsonKey(name: 'base_experience') required final int baseXP,
      final int? order,
      final List<StatResponse>? stats,
      final List<TypeResponse>? types,
      required final ArtworkResponse artwork}) = _$PokemonResponseImpl;

  factory _PokemonResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonResponseImpl.fromJson;

  @override
  int get height;
  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  @JsonKey(name: 'base_experience')
  int get baseXP;
  @override
  int? get order;
  @override
  List<StatResponse>? get stats;
  @override
  List<TypeResponse>? get types;
  @override
  ArtworkResponse get artwork;
  @override
  @JsonKey(ignore: true)
  _$$PokemonResponseImplCopyWith<_$PokemonResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatResponse _$StatResponseFromJson(Map<String, dynamic> json) {
  return _StatResponse.fromJson(json);
}

/// @nodoc
mixin _$StatResponse {
  @JsonKey(name: 'base_stat')
  int? get baseStat => throw _privateConstructorUsedError;
  int? get effort => throw _privateConstructorUsedError;
  @JsonKey(name: 'stat')
  ItemResponse get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatResponseCopyWith<StatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatResponseCopyWith<$Res> {
  factory $StatResponseCopyWith(
          StatResponse value, $Res Function(StatResponse) then) =
      _$StatResponseCopyWithImpl<$Res, StatResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int? baseStat,
      int? effort,
      @JsonKey(name: 'stat') ItemResponse item});

  $ItemResponseCopyWith<$Res> get item;
}

/// @nodoc
class _$StatResponseCopyWithImpl<$Res, $Val extends StatResponse>
    implements $StatResponseCopyWith<$Res> {
  _$StatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = freezed,
    Object? effort = freezed,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      baseStat: freezed == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int?,
      effort: freezed == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int?,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemResponseCopyWith<$Res> get item {
    return $ItemResponseCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatResponseImplCopyWith<$Res>
    implements $StatResponseCopyWith<$Res> {
  factory _$$StatResponseImplCopyWith(
          _$StatResponseImpl value, $Res Function(_$StatResponseImpl) then) =
      __$$StatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int? baseStat,
      int? effort,
      @JsonKey(name: 'stat') ItemResponse item});

  @override
  $ItemResponseCopyWith<$Res> get item;
}

/// @nodoc
class __$$StatResponseImplCopyWithImpl<$Res>
    extends _$StatResponseCopyWithImpl<$Res, _$StatResponseImpl>
    implements _$$StatResponseImplCopyWith<$Res> {
  __$$StatResponseImplCopyWithImpl(
      _$StatResponseImpl _value, $Res Function(_$StatResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = freezed,
    Object? effort = freezed,
    Object? item = null,
  }) {
    return _then(_$StatResponseImpl(
      baseStat: freezed == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int?,
      effort: freezed == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int?,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$StatResponseImpl implements _StatResponse {
  _$StatResponseImpl(
      {@JsonKey(name: 'base_stat') this.baseStat,
      this.effort,
      @JsonKey(name: 'stat') required this.item});

  factory _$StatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatResponseImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int? baseStat;
  @override
  final int? effort;
  @override
  @JsonKey(name: 'stat')
  final ItemResponse item;

  @override
  String toString() {
    return 'StatResponse(baseStat: $baseStat, effort: $effort, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatResponseImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatResponseImplCopyWith<_$StatResponseImpl> get copyWith =>
      __$$StatResponseImplCopyWithImpl<_$StatResponseImpl>(this, _$identity);
}

abstract class _StatResponse implements StatResponse {
  factory _StatResponse(
          {@JsonKey(name: 'base_stat') final int? baseStat,
          final int? effort,
          @JsonKey(name: 'stat') required final ItemResponse item}) =
      _$StatResponseImpl;

  factory _StatResponse.fromJson(Map<String, dynamic> json) =
      _$StatResponseImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int? get baseStat;
  @override
  int? get effort;
  @override
  @JsonKey(name: 'stat')
  ItemResponse get item;
  @override
  @JsonKey(ignore: true)
  _$$StatResponseImplCopyWith<_$StatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeResponse _$TypeResponseFromJson(Map<String, dynamic> json) {
  return _TypeResponse.fromJson(json);
}

/// @nodoc
mixin _$TypeResponse {
  int? get slot => throw _privateConstructorUsedError;
  ItemResponse? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypeResponseCopyWith<TypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeResponseCopyWith<$Res> {
  factory $TypeResponseCopyWith(
          TypeResponse value, $Res Function(TypeResponse) then) =
      _$TypeResponseCopyWithImpl<$Res, TypeResponse>;
  @useResult
  $Res call({int? slot, ItemResponse? type});

  $ItemResponseCopyWith<$Res>? get type;
}

/// @nodoc
class _$TypeResponseCopyWithImpl<$Res, $Val extends TypeResponse>
    implements $TypeResponseCopyWith<$Res> {
  _$TypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemResponseCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $ItemResponseCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypeResponseImplCopyWith<$Res>
    implements $TypeResponseCopyWith<$Res> {
  factory _$$TypeResponseImplCopyWith(
          _$TypeResponseImpl value, $Res Function(_$TypeResponseImpl) then) =
      __$$TypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? slot, ItemResponse? type});

  @override
  $ItemResponseCopyWith<$Res>? get type;
}

/// @nodoc
class __$$TypeResponseImplCopyWithImpl<$Res>
    extends _$TypeResponseCopyWithImpl<$Res, _$TypeResponseImpl>
    implements _$$TypeResponseImplCopyWith<$Res> {
  __$$TypeResponseImplCopyWithImpl(
      _$TypeResponseImpl _value, $Res Function(_$TypeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_$TypeResponseImpl(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TypeResponseImpl implements _TypeResponse {
  _$TypeResponseImpl({this.slot, this.type});

  factory _$TypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeResponseImplFromJson(json);

  @override
  final int? slot;
  @override
  final ItemResponse? type;

  @override
  String toString() {
    return 'TypeResponse(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeResponseImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeResponseImplCopyWith<_$TypeResponseImpl> get copyWith =>
      __$$TypeResponseImplCopyWithImpl<_$TypeResponseImpl>(this, _$identity);
}

abstract class _TypeResponse implements TypeResponse {
  factory _TypeResponse({final int? slot, final ItemResponse? type}) =
      _$TypeResponseImpl;

  factory _TypeResponse.fromJson(Map<String, dynamic> json) =
      _$TypeResponseImpl.fromJson;

  @override
  int? get slot;
  @override
  ItemResponse? get type;
  @override
  @JsonKey(ignore: true)
  _$$TypeResponseImplCopyWith<_$TypeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemResponse _$ItemResponseFromJson(Map<String, dynamic> json) {
  return _ItemResponse.fromJson(json);
}

/// @nodoc
mixin _$ItemResponse {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemResponseCopyWith<ItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemResponseCopyWith<$Res> {
  factory $ItemResponseCopyWith(
          ItemResponse value, $Res Function(ItemResponse) then) =
      _$ItemResponseCopyWithImpl<$Res, ItemResponse>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$ItemResponseCopyWithImpl<$Res, $Val extends ItemResponse>
    implements $ItemResponseCopyWith<$Res> {
  _$ItemResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ItemResponseImplCopyWith<$Res>
    implements $ItemResponseCopyWith<$Res> {
  factory _$$ItemResponseImplCopyWith(
          _$ItemResponseImpl value, $Res Function(_$ItemResponseImpl) then) =
      __$$ItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$ItemResponseImplCopyWithImpl<$Res>
    extends _$ItemResponseCopyWithImpl<$Res, _$ItemResponseImpl>
    implements _$$ItemResponseImplCopyWith<$Res> {
  __$$ItemResponseImplCopyWithImpl(
      _$ItemResponseImpl _value, $Res Function(_$ItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$ItemResponseImpl(
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
@JsonSerializable(createToJson: false)
class _$ItemResponseImpl implements _ItemResponse {
  _$ItemResponseImpl({required this.name, required this.url});

  factory _$ItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ItemResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemResponseImplCopyWith<_$ItemResponseImpl> get copyWith =>
      __$$ItemResponseImplCopyWithImpl<_$ItemResponseImpl>(this, _$identity);
}

abstract class _ItemResponse implements ItemResponse {
  factory _ItemResponse(
      {required final String name,
      required final String url}) = _$ItemResponseImpl;

  factory _ItemResponse.fromJson(Map<String, dynamic> json) =
      _$ItemResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ItemResponseImplCopyWith<_$ItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfficialArtworkResponse _$OfficialArtworkResponseFromJson(
    Map<String, dynamic> json) {
  return _OfficialArtworkResponse.fromJson(json);
}

/// @nodoc
mixin _$OfficialArtworkResponse {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfficialArtworkResponseCopyWith<OfficialArtworkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialArtworkResponseCopyWith<$Res> {
  factory $OfficialArtworkResponseCopyWith(OfficialArtworkResponse value,
          $Res Function(OfficialArtworkResponse) then) =
      _$OfficialArtworkResponseCopyWithImpl<$Res, OfficialArtworkResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_shiny') String? frontShiny});
}

/// @nodoc
class _$OfficialArtworkResponseCopyWithImpl<$Res,
        $Val extends OfficialArtworkResponse>
    implements $OfficialArtworkResponseCopyWith<$Res> {
  _$OfficialArtworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontShiny = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficialArtworkResponseImplCopyWith<$Res>
    implements $OfficialArtworkResponseCopyWith<$Res> {
  factory _$$OfficialArtworkResponseImplCopyWith(
          _$OfficialArtworkResponseImpl value,
          $Res Function(_$OfficialArtworkResponseImpl) then) =
      __$$OfficialArtworkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String? frontDefault,
      @JsonKey(name: 'front_shiny') String? frontShiny});
}

/// @nodoc
class __$$OfficialArtworkResponseImplCopyWithImpl<$Res>
    extends _$OfficialArtworkResponseCopyWithImpl<$Res,
        _$OfficialArtworkResponseImpl>
    implements _$$OfficialArtworkResponseImplCopyWith<$Res> {
  __$$OfficialArtworkResponseImplCopyWithImpl(
      _$OfficialArtworkResponseImpl _value,
      $Res Function(_$OfficialArtworkResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontShiny = freezed,
  }) {
    return _then(_$OfficialArtworkResponseImpl(
      frontDefault: freezed == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String?,
      frontShiny: freezed == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$OfficialArtworkResponseImpl implements _OfficialArtworkResponse {
  _$OfficialArtworkResponseImpl(
      {@JsonKey(name: 'front_default') this.frontDefault,
      @JsonKey(name: 'front_shiny') this.frontShiny});

  factory _$OfficialArtworkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfficialArtworkResponseImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;

  @override
  String toString() {
    return 'OfficialArtworkResponse(frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficialArtworkResponseImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontShiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficialArtworkResponseImplCopyWith<_$OfficialArtworkResponseImpl>
      get copyWith => __$$OfficialArtworkResponseImplCopyWithImpl<
          _$OfficialArtworkResponseImpl>(this, _$identity);
}

abstract class _OfficialArtworkResponse implements OfficialArtworkResponse {
  factory _OfficialArtworkResponse(
          {@JsonKey(name: 'front_default') final String? frontDefault,
          @JsonKey(name: 'front_shiny') final String? frontShiny}) =
      _$OfficialArtworkResponseImpl;

  factory _OfficialArtworkResponse.fromJson(Map<String, dynamic> json) =
      _$OfficialArtworkResponseImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  @JsonKey(ignore: true)
  _$$OfficialArtworkResponseImplCopyWith<_$OfficialArtworkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ArtworkResponse _$ArtworkResponseFromJson(Map<String, dynamic> json) {
  return _ArtworkResponse.fromJson(json);
}

/// @nodoc
mixin _$ArtworkResponse {
  @JsonKey(name: "official-artwork")
  OfficialArtworkResponse get officialArtwork =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtworkResponseCopyWith<ArtworkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkResponseCopyWith<$Res> {
  factory $ArtworkResponseCopyWith(
          ArtworkResponse value, $Res Function(ArtworkResponse) then) =
      _$ArtworkResponseCopyWithImpl<$Res, ArtworkResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "official-artwork")
      OfficialArtworkResponse officialArtwork});

  $OfficialArtworkResponseCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class _$ArtworkResponseCopyWithImpl<$Res, $Val extends ArtworkResponse>
    implements $ArtworkResponseCopyWith<$Res> {
  _$ArtworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = null,
  }) {
    return _then(_value.copyWith(
      officialArtwork: null == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtworkResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfficialArtworkResponseCopyWith<$Res> get officialArtwork {
    return $OfficialArtworkResponseCopyWith<$Res>(_value.officialArtwork,
        (value) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtworkResponseImplCopyWith<$Res>
    implements $ArtworkResponseCopyWith<$Res> {
  factory _$$ArtworkResponseImplCopyWith(_$ArtworkResponseImpl value,
          $Res Function(_$ArtworkResponseImpl) then) =
      __$$ArtworkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "official-artwork")
      OfficialArtworkResponse officialArtwork});

  @override
  $OfficialArtworkResponseCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class __$$ArtworkResponseImplCopyWithImpl<$Res>
    extends _$ArtworkResponseCopyWithImpl<$Res, _$ArtworkResponseImpl>
    implements _$$ArtworkResponseImplCopyWith<$Res> {
  __$$ArtworkResponseImplCopyWithImpl(
      _$ArtworkResponseImpl _value, $Res Function(_$ArtworkResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = null,
  }) {
    return _then(_$ArtworkResponseImpl(
      officialArtwork: null == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtworkResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ArtworkResponseImpl implements _ArtworkResponse {
  _$ArtworkResponseImpl(
      {@JsonKey(name: "official-artwork") required this.officialArtwork});

  factory _$ArtworkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtworkResponseImplFromJson(json);

  @override
  @JsonKey(name: "official-artwork")
  final OfficialArtworkResponse officialArtwork;

  @override
  String toString() {
    return 'ArtworkResponse(officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtworkResponseImpl &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, officialArtwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtworkResponseImplCopyWith<_$ArtworkResponseImpl> get copyWith =>
      __$$ArtworkResponseImplCopyWithImpl<_$ArtworkResponseImpl>(
          this, _$identity);
}

abstract class _ArtworkResponse implements ArtworkResponse {
  factory _ArtworkResponse(
          {@JsonKey(name: "official-artwork")
          required final OfficialArtworkResponse officialArtwork}) =
      _$ArtworkResponseImpl;

  factory _ArtworkResponse.fromJson(Map<String, dynamic> json) =
      _$ArtworkResponseImpl.fromJson;

  @override
  @JsonKey(name: "official-artwork")
  OfficialArtworkResponse get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$$ArtworkResponseImplCopyWith<_$ArtworkResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
