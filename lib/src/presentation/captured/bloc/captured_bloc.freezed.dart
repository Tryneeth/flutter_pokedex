// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captured_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CapturedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String pokemonName) pokemonDetails,
    required TResult Function(Sort sort, List<PokemonType> filter)
        sortAndFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String pokemonName)? pokemonDetails,
    TResult? Function(Sort sort, List<PokemonType> filter)? sortAndFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String pokemonName)? pokemonDetails,
    TResult Function(Sort sort, List<PokemonType> filter)? sortAndFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCapturedEvent value) load,
    required TResult Function(_PokemonDetailsCapturedEvent value)
        pokemonDetails,
    required TResult Function(_SortAndFilterCapturedEvent value) sortAndFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCapturedEvent value)? load,
    TResult? Function(_PokemonDetailsCapturedEvent value)? pokemonDetails,
    TResult? Function(_SortAndFilterCapturedEvent value)? sortAndFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCapturedEvent value)? load,
    TResult Function(_PokemonDetailsCapturedEvent value)? pokemonDetails,
    TResult Function(_SortAndFilterCapturedEvent value)? sortAndFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapturedEventCopyWith<$Res> {
  factory $CapturedEventCopyWith(
          CapturedEvent value, $Res Function(CapturedEvent) then) =
      _$CapturedEventCopyWithImpl<$Res, CapturedEvent>;
}

/// @nodoc
class _$CapturedEventCopyWithImpl<$Res, $Val extends CapturedEvent>
    implements $CapturedEventCopyWith<$Res> {
  _$CapturedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCapturedEventImplCopyWith<$Res> {
  factory _$$LoadCapturedEventImplCopyWith(_$LoadCapturedEventImpl value,
          $Res Function(_$LoadCapturedEventImpl) then) =
      __$$LoadCapturedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCapturedEventImplCopyWithImpl<$Res>
    extends _$CapturedEventCopyWithImpl<$Res, _$LoadCapturedEventImpl>
    implements _$$LoadCapturedEventImplCopyWith<$Res> {
  __$$LoadCapturedEventImplCopyWithImpl(_$LoadCapturedEventImpl _value,
      $Res Function(_$LoadCapturedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCapturedEventImpl implements _LoadCapturedEvent {
  const _$LoadCapturedEventImpl();

  @override
  String toString() {
    return 'CapturedEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCapturedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String pokemonName) pokemonDetails,
    required TResult Function(Sort sort, List<PokemonType> filter)
        sortAndFilter,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String pokemonName)? pokemonDetails,
    TResult? Function(Sort sort, List<PokemonType> filter)? sortAndFilter,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String pokemonName)? pokemonDetails,
    TResult Function(Sort sort, List<PokemonType> filter)? sortAndFilter,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCapturedEvent value) load,
    required TResult Function(_PokemonDetailsCapturedEvent value)
        pokemonDetails,
    required TResult Function(_SortAndFilterCapturedEvent value) sortAndFilter,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCapturedEvent value)? load,
    TResult? Function(_PokemonDetailsCapturedEvent value)? pokemonDetails,
    TResult? Function(_SortAndFilterCapturedEvent value)? sortAndFilter,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCapturedEvent value)? load,
    TResult Function(_PokemonDetailsCapturedEvent value)? pokemonDetails,
    TResult Function(_SortAndFilterCapturedEvent value)? sortAndFilter,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadCapturedEvent implements CapturedEvent {
  const factory _LoadCapturedEvent() = _$LoadCapturedEventImpl;
}

/// @nodoc
abstract class _$$PokemonDetailsCapturedEventImplCopyWith<$Res> {
  factory _$$PokemonDetailsCapturedEventImplCopyWith(
          _$PokemonDetailsCapturedEventImpl value,
          $Res Function(_$PokemonDetailsCapturedEventImpl) then) =
      __$$PokemonDetailsCapturedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pokemonName});
}

/// @nodoc
class __$$PokemonDetailsCapturedEventImplCopyWithImpl<$Res>
    extends _$CapturedEventCopyWithImpl<$Res, _$PokemonDetailsCapturedEventImpl>
    implements _$$PokemonDetailsCapturedEventImplCopyWith<$Res> {
  __$$PokemonDetailsCapturedEventImplCopyWithImpl(
      _$PokemonDetailsCapturedEventImpl _value,
      $Res Function(_$PokemonDetailsCapturedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonName = null,
  }) {
    return _then(_$PokemonDetailsCapturedEventImpl(
      null == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonDetailsCapturedEventImpl
    implements _PokemonDetailsCapturedEvent {
  const _$PokemonDetailsCapturedEventImpl(this.pokemonName);

  @override
  final String pokemonName;

  @override
  String toString() {
    return 'CapturedEvent.pokemonDetails(pokemonName: $pokemonName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailsCapturedEventImpl &&
            (identical(other.pokemonName, pokemonName) ||
                other.pokemonName == pokemonName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokemonName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailsCapturedEventImplCopyWith<_$PokemonDetailsCapturedEventImpl>
      get copyWith => __$$PokemonDetailsCapturedEventImplCopyWithImpl<
          _$PokemonDetailsCapturedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String pokemonName) pokemonDetails,
    required TResult Function(Sort sort, List<PokemonType> filter)
        sortAndFilter,
  }) {
    return pokemonDetails(pokemonName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String pokemonName)? pokemonDetails,
    TResult? Function(Sort sort, List<PokemonType> filter)? sortAndFilter,
  }) {
    return pokemonDetails?.call(pokemonName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String pokemonName)? pokemonDetails,
    TResult Function(Sort sort, List<PokemonType> filter)? sortAndFilter,
    required TResult orElse(),
  }) {
    if (pokemonDetails != null) {
      return pokemonDetails(pokemonName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCapturedEvent value) load,
    required TResult Function(_PokemonDetailsCapturedEvent value)
        pokemonDetails,
    required TResult Function(_SortAndFilterCapturedEvent value) sortAndFilter,
  }) {
    return pokemonDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCapturedEvent value)? load,
    TResult? Function(_PokemonDetailsCapturedEvent value)? pokemonDetails,
    TResult? Function(_SortAndFilterCapturedEvent value)? sortAndFilter,
  }) {
    return pokemonDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCapturedEvent value)? load,
    TResult Function(_PokemonDetailsCapturedEvent value)? pokemonDetails,
    TResult Function(_SortAndFilterCapturedEvent value)? sortAndFilter,
    required TResult orElse(),
  }) {
    if (pokemonDetails != null) {
      return pokemonDetails(this);
    }
    return orElse();
  }
}

abstract class _PokemonDetailsCapturedEvent implements CapturedEvent {
  const factory _PokemonDetailsCapturedEvent(final String pokemonName) =
      _$PokemonDetailsCapturedEventImpl;

  String get pokemonName;
  @JsonKey(ignore: true)
  _$$PokemonDetailsCapturedEventImplCopyWith<_$PokemonDetailsCapturedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortAndFilterCapturedEventImplCopyWith<$Res> {
  factory _$$SortAndFilterCapturedEventImplCopyWith(
          _$SortAndFilterCapturedEventImpl value,
          $Res Function(_$SortAndFilterCapturedEventImpl) then) =
      __$$SortAndFilterCapturedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Sort sort, List<PokemonType> filter});
}

/// @nodoc
class __$$SortAndFilterCapturedEventImplCopyWithImpl<$Res>
    extends _$CapturedEventCopyWithImpl<$Res, _$SortAndFilterCapturedEventImpl>
    implements _$$SortAndFilterCapturedEventImplCopyWith<$Res> {
  __$$SortAndFilterCapturedEventImplCopyWithImpl(
      _$SortAndFilterCapturedEventImpl _value,
      $Res Function(_$SortAndFilterCapturedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? filter = null,
  }) {
    return _then(_$SortAndFilterCapturedEventImpl(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      filter: null == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ));
  }
}

/// @nodoc

class _$SortAndFilterCapturedEventImpl implements _SortAndFilterCapturedEvent {
  const _$SortAndFilterCapturedEventImpl(
      {this.sort = Sort.byId, final List<PokemonType> filter = const []})
      : _filter = filter;

  @override
  @JsonKey()
  final Sort sort;
  final List<PokemonType> _filter;
  @override
  @JsonKey()
  List<PokemonType> get filter {
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filter);
  }

  @override
  String toString() {
    return 'CapturedEvent.sortAndFilter(sort: $sort, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortAndFilterCapturedEventImpl &&
            (identical(other.sort, sort) || other.sort == sort) &&
            const DeepCollectionEquality().equals(other._filter, _filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sort, const DeepCollectionEquality().hash(_filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortAndFilterCapturedEventImplCopyWith<_$SortAndFilterCapturedEventImpl>
      get copyWith => __$$SortAndFilterCapturedEventImplCopyWithImpl<
          _$SortAndFilterCapturedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String pokemonName) pokemonDetails,
    required TResult Function(Sort sort, List<PokemonType> filter)
        sortAndFilter,
  }) {
    return sortAndFilter(sort, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String pokemonName)? pokemonDetails,
    TResult? Function(Sort sort, List<PokemonType> filter)? sortAndFilter,
  }) {
    return sortAndFilter?.call(sort, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String pokemonName)? pokemonDetails,
    TResult Function(Sort sort, List<PokemonType> filter)? sortAndFilter,
    required TResult orElse(),
  }) {
    if (sortAndFilter != null) {
      return sortAndFilter(sort, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCapturedEvent value) load,
    required TResult Function(_PokemonDetailsCapturedEvent value)
        pokemonDetails,
    required TResult Function(_SortAndFilterCapturedEvent value) sortAndFilter,
  }) {
    return sortAndFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCapturedEvent value)? load,
    TResult? Function(_PokemonDetailsCapturedEvent value)? pokemonDetails,
    TResult? Function(_SortAndFilterCapturedEvent value)? sortAndFilter,
  }) {
    return sortAndFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCapturedEvent value)? load,
    TResult Function(_PokemonDetailsCapturedEvent value)? pokemonDetails,
    TResult Function(_SortAndFilterCapturedEvent value)? sortAndFilter,
    required TResult orElse(),
  }) {
    if (sortAndFilter != null) {
      return sortAndFilter(this);
    }
    return orElse();
  }
}

abstract class _SortAndFilterCapturedEvent implements CapturedEvent {
  const factory _SortAndFilterCapturedEvent(
      {final Sort sort,
      final List<PokemonType> filter}) = _$SortAndFilterCapturedEventImpl;

  Sort get sort;
  List<PokemonType> get filter;
  @JsonKey(ignore: true)
  _$$SortAndFilterCapturedEventImplCopyWith<_$SortAndFilterCapturedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CapturedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HivePokemon> capturedList,
            List<HivePokemon> filteredList, Sort sort, List<PokemonType> filter)
        content,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCapturedState value) initial,
    required TResult Function(_LoadingCapturedState value) loading,
    required TResult Function(_ContentCapturedState value) content,
    required TResult Function(_ErrorCapturedState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCapturedState value)? initial,
    TResult? Function(_LoadingCapturedState value)? loading,
    TResult? Function(_ContentCapturedState value)? content,
    TResult? Function(_ErrorCapturedState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCapturedState value)? initial,
    TResult Function(_LoadingCapturedState value)? loading,
    TResult Function(_ContentCapturedState value)? content,
    TResult Function(_ErrorCapturedState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapturedStateCopyWith<$Res> {
  factory $CapturedStateCopyWith(
          CapturedState value, $Res Function(CapturedState) then) =
      _$CapturedStateCopyWithImpl<$Res, CapturedState>;
}

/// @nodoc
class _$CapturedStateCopyWithImpl<$Res, $Val extends CapturedState>
    implements $CapturedStateCopyWith<$Res> {
  _$CapturedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCapturedStateImplCopyWith<$Res> {
  factory _$$InitialCapturedStateImplCopyWith(_$InitialCapturedStateImpl value,
          $Res Function(_$InitialCapturedStateImpl) then) =
      __$$InitialCapturedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCapturedStateImplCopyWithImpl<$Res>
    extends _$CapturedStateCopyWithImpl<$Res, _$InitialCapturedStateImpl>
    implements _$$InitialCapturedStateImplCopyWith<$Res> {
  __$$InitialCapturedStateImplCopyWithImpl(_$InitialCapturedStateImpl _value,
      $Res Function(_$InitialCapturedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCapturedStateImpl implements _InitialCapturedState {
  const _$InitialCapturedStateImpl();

  @override
  String toString() {
    return 'CapturedState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialCapturedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HivePokemon> capturedList,
            List<HivePokemon> filteredList, Sort sort, List<PokemonType> filter)
        content,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult? Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCapturedState value) initial,
    required TResult Function(_LoadingCapturedState value) loading,
    required TResult Function(_ContentCapturedState value) content,
    required TResult Function(_ErrorCapturedState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCapturedState value)? initial,
    TResult? Function(_LoadingCapturedState value)? loading,
    TResult? Function(_ContentCapturedState value)? content,
    TResult? Function(_ErrorCapturedState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCapturedState value)? initial,
    TResult Function(_LoadingCapturedState value)? loading,
    TResult Function(_ContentCapturedState value)? content,
    TResult Function(_ErrorCapturedState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCapturedState implements CapturedState {
  const factory _InitialCapturedState() = _$InitialCapturedStateImpl;
}

/// @nodoc
abstract class _$$LoadingCapturedStateImplCopyWith<$Res> {
  factory _$$LoadingCapturedStateImplCopyWith(_$LoadingCapturedStateImpl value,
          $Res Function(_$LoadingCapturedStateImpl) then) =
      __$$LoadingCapturedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCapturedStateImplCopyWithImpl<$Res>
    extends _$CapturedStateCopyWithImpl<$Res, _$LoadingCapturedStateImpl>
    implements _$$LoadingCapturedStateImplCopyWith<$Res> {
  __$$LoadingCapturedStateImplCopyWithImpl(_$LoadingCapturedStateImpl _value,
      $Res Function(_$LoadingCapturedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCapturedStateImpl implements _LoadingCapturedState {
  const _$LoadingCapturedStateImpl();

  @override
  String toString() {
    return 'CapturedState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCapturedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HivePokemon> capturedList,
            List<HivePokemon> filteredList, Sort sort, List<PokemonType> filter)
        content,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCapturedState value) initial,
    required TResult Function(_LoadingCapturedState value) loading,
    required TResult Function(_ContentCapturedState value) content,
    required TResult Function(_ErrorCapturedState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCapturedState value)? initial,
    TResult? Function(_LoadingCapturedState value)? loading,
    TResult? Function(_ContentCapturedState value)? content,
    TResult? Function(_ErrorCapturedState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCapturedState value)? initial,
    TResult Function(_LoadingCapturedState value)? loading,
    TResult Function(_ContentCapturedState value)? content,
    TResult Function(_ErrorCapturedState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCapturedState implements CapturedState {
  const factory _LoadingCapturedState() = _$LoadingCapturedStateImpl;
}

/// @nodoc
abstract class _$$ContentCapturedStateImplCopyWith<$Res> {
  factory _$$ContentCapturedStateImplCopyWith(_$ContentCapturedStateImpl value,
          $Res Function(_$ContentCapturedStateImpl) then) =
      __$$ContentCapturedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<HivePokemon> capturedList,
      List<HivePokemon> filteredList,
      Sort sort,
      List<PokemonType> filter});
}

/// @nodoc
class __$$ContentCapturedStateImplCopyWithImpl<$Res>
    extends _$CapturedStateCopyWithImpl<$Res, _$ContentCapturedStateImpl>
    implements _$$ContentCapturedStateImplCopyWith<$Res> {
  __$$ContentCapturedStateImplCopyWithImpl(_$ContentCapturedStateImpl _value,
      $Res Function(_$ContentCapturedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capturedList = null,
    Object? filteredList = null,
    Object? sort = null,
    Object? filter = null,
  }) {
    return _then(_$ContentCapturedStateImpl(
      capturedList: null == capturedList
          ? _value._capturedList
          : capturedList // ignore: cast_nullable_to_non_nullable
              as List<HivePokemon>,
      filteredList: null == filteredList
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<HivePokemon>,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      filter: null == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ));
  }
}

/// @nodoc

class _$ContentCapturedStateImpl implements _ContentCapturedState {
  const _$ContentCapturedStateImpl(
      {required final List<HivePokemon> capturedList,
      required final List<HivePokemon> filteredList,
      this.sort = Sort.byId,
      final List<PokemonType> filter = const []})
      : _capturedList = capturedList,
        _filteredList = filteredList,
        _filter = filter;

  final List<HivePokemon> _capturedList;
  @override
  List<HivePokemon> get capturedList {
    if (_capturedList is EqualUnmodifiableListView) return _capturedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capturedList);
  }

  final List<HivePokemon> _filteredList;
  @override
  List<HivePokemon> get filteredList {
    if (_filteredList is EqualUnmodifiableListView) return _filteredList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredList);
  }

  @override
  @JsonKey()
  final Sort sort;
  final List<PokemonType> _filter;
  @override
  @JsonKey()
  List<PokemonType> get filter {
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filter);
  }

  @override
  String toString() {
    return 'CapturedState.content(capturedList: $capturedList, filteredList: $filteredList, sort: $sort, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentCapturedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._capturedList, _capturedList) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            const DeepCollectionEquality().equals(other._filter, _filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_capturedList),
      const DeepCollectionEquality().hash(_filteredList),
      sort,
      const DeepCollectionEquality().hash(_filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentCapturedStateImplCopyWith<_$ContentCapturedStateImpl>
      get copyWith =>
          __$$ContentCapturedStateImplCopyWithImpl<_$ContentCapturedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HivePokemon> capturedList,
            List<HivePokemon> filteredList, Sort sort, List<PokemonType> filter)
        content,
    required TResult Function(Exception error) error,
  }) {
    return content(capturedList, filteredList, sort, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult? Function(Exception error)? error,
  }) {
    return content?.call(capturedList, filteredList, sort, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(capturedList, filteredList, sort, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCapturedState value) initial,
    required TResult Function(_LoadingCapturedState value) loading,
    required TResult Function(_ContentCapturedState value) content,
    required TResult Function(_ErrorCapturedState value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCapturedState value)? initial,
    TResult? Function(_LoadingCapturedState value)? loading,
    TResult? Function(_ContentCapturedState value)? content,
    TResult? Function(_ErrorCapturedState value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCapturedState value)? initial,
    TResult Function(_LoadingCapturedState value)? loading,
    TResult Function(_ContentCapturedState value)? content,
    TResult Function(_ErrorCapturedState value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _ContentCapturedState implements CapturedState {
  const factory _ContentCapturedState(
      {required final List<HivePokemon> capturedList,
      required final List<HivePokemon> filteredList,
      final Sort sort,
      final List<PokemonType> filter}) = _$ContentCapturedStateImpl;

  List<HivePokemon> get capturedList;
  List<HivePokemon> get filteredList;
  Sort get sort;
  List<PokemonType> get filter;
  @JsonKey(ignore: true)
  _$$ContentCapturedStateImplCopyWith<_$ContentCapturedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCapturedStateImplCopyWith<$Res> {
  factory _$$ErrorCapturedStateImplCopyWith(_$ErrorCapturedStateImpl value,
          $Res Function(_$ErrorCapturedStateImpl) then) =
      __$$ErrorCapturedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ErrorCapturedStateImplCopyWithImpl<$Res>
    extends _$CapturedStateCopyWithImpl<$Res, _$ErrorCapturedStateImpl>
    implements _$$ErrorCapturedStateImplCopyWith<$Res> {
  __$$ErrorCapturedStateImplCopyWithImpl(_$ErrorCapturedStateImpl _value,
      $Res Function(_$ErrorCapturedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorCapturedStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ErrorCapturedStateImpl implements _ErrorCapturedState {
  const _$ErrorCapturedStateImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'CapturedState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCapturedStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCapturedStateImplCopyWith<_$ErrorCapturedStateImpl> get copyWith =>
      __$$ErrorCapturedStateImplCopyWithImpl<_$ErrorCapturedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HivePokemon> capturedList,
            List<HivePokemon> filteredList, Sort sort, List<PokemonType> filter)
        content,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<HivePokemon> capturedList,
            List<HivePokemon> filteredList,
            Sort sort,
            List<PokemonType> filter)?
        content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCapturedState value) initial,
    required TResult Function(_LoadingCapturedState value) loading,
    required TResult Function(_ContentCapturedState value) content,
    required TResult Function(_ErrorCapturedState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCapturedState value)? initial,
    TResult? Function(_LoadingCapturedState value)? loading,
    TResult? Function(_ContentCapturedState value)? content,
    TResult? Function(_ErrorCapturedState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCapturedState value)? initial,
    TResult Function(_LoadingCapturedState value)? loading,
    TResult Function(_ContentCapturedState value)? content,
    TResult Function(_ErrorCapturedState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCapturedState implements CapturedState {
  const factory _ErrorCapturedState(final Exception error) =
      _$ErrorCapturedStateImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ErrorCapturedStateImplCopyWith<_$ErrorCapturedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
