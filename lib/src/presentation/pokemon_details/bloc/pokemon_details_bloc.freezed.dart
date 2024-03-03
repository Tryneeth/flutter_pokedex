// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPokemonDetailsEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPokemonDetailsEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPokemonDetailsEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsEventCopyWith<$Res> {
  factory $PokemonDetailsEventCopyWith(
          PokemonDetailsEvent value, $Res Function(PokemonDetailsEvent) then) =
      _$PokemonDetailsEventCopyWithImpl<$Res, PokemonDetailsEvent>;
}

/// @nodoc
class _$PokemonDetailsEventCopyWithImpl<$Res, $Val extends PokemonDetailsEvent>
    implements $PokemonDetailsEventCopyWith<$Res> {
  _$PokemonDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadPokemonDetailsEventImplCopyWith<$Res> {
  factory _$$LoadPokemonDetailsEventImplCopyWith(
          _$LoadPokemonDetailsEventImpl value,
          $Res Function(_$LoadPokemonDetailsEventImpl) then) =
      __$$LoadPokemonDetailsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadPokemonDetailsEventImplCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res,
        _$LoadPokemonDetailsEventImpl>
    implements _$$LoadPokemonDetailsEventImplCopyWith<$Res> {
  __$$LoadPokemonDetailsEventImplCopyWithImpl(
      _$LoadPokemonDetailsEventImpl _value,
      $Res Function(_$LoadPokemonDetailsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadPokemonDetailsEventImpl implements _LoadPokemonDetailsEvent {
  const _$LoadPokemonDetailsEventImpl();

  @override
  String toString() {
    return 'PokemonDetailsEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPokemonDetailsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
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
    required TResult Function(_LoadPokemonDetailsEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPokemonDetailsEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPokemonDetailsEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadPokemonDetailsEvent implements PokemonDetailsEvent {
  const factory _LoadPokemonDetailsEvent() = _$LoadPokemonDetailsEventImpl;
}

/// @nodoc
mixin _$PokemonDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) content,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Pokemon pokemon)? content,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPokemonDetailsState value) initial,
    required TResult Function(_LoadingPokemonDetailsState value) loading,
    required TResult Function(_ContentPokemonDetailsState value) content,
    required TResult Function(_ErrorPokemonDetailsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokemonDetailsState value)? initial,
    TResult? Function(_LoadingPokemonDetailsState value)? loading,
    TResult? Function(_ContentPokemonDetailsState value)? content,
    TResult? Function(_ErrorPokemonDetailsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokemonDetailsState value)? initial,
    TResult Function(_LoadingPokemonDetailsState value)? loading,
    TResult Function(_ContentPokemonDetailsState value)? content,
    TResult Function(_ErrorPokemonDetailsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsStateCopyWith<$Res> {
  factory $PokemonDetailsStateCopyWith(
          PokemonDetailsState value, $Res Function(PokemonDetailsState) then) =
      _$PokemonDetailsStateCopyWithImpl<$Res, PokemonDetailsState>;
}

/// @nodoc
class _$PokemonDetailsStateCopyWithImpl<$Res, $Val extends PokemonDetailsState>
    implements $PokemonDetailsStateCopyWith<$Res> {
  _$PokemonDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialPokemonDetailsStateImplCopyWith<$Res> {
  factory _$$InitialPokemonDetailsStateImplCopyWith(
          _$InitialPokemonDetailsStateImpl value,
          $Res Function(_$InitialPokemonDetailsStateImpl) then) =
      __$$InitialPokemonDetailsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialPokemonDetailsStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res,
        _$InitialPokemonDetailsStateImpl>
    implements _$$InitialPokemonDetailsStateImplCopyWith<$Res> {
  __$$InitialPokemonDetailsStateImplCopyWithImpl(
      _$InitialPokemonDetailsStateImpl _value,
      $Res Function(_$InitialPokemonDetailsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPokemonDetailsStateImpl implements _InitialPokemonDetailsState {
  const _$InitialPokemonDetailsStateImpl();

  @override
  String toString() {
    return 'PokemonDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPokemonDetailsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) content,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Pokemon pokemon)? content,
    TResult? Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? content,
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
    required TResult Function(_InitialPokemonDetailsState value) initial,
    required TResult Function(_LoadingPokemonDetailsState value) loading,
    required TResult Function(_ContentPokemonDetailsState value) content,
    required TResult Function(_ErrorPokemonDetailsState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokemonDetailsState value)? initial,
    TResult? Function(_LoadingPokemonDetailsState value)? loading,
    TResult? Function(_ContentPokemonDetailsState value)? content,
    TResult? Function(_ErrorPokemonDetailsState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokemonDetailsState value)? initial,
    TResult Function(_LoadingPokemonDetailsState value)? loading,
    TResult Function(_ContentPokemonDetailsState value)? content,
    TResult Function(_ErrorPokemonDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPokemonDetailsState implements PokemonDetailsState {
  const factory _InitialPokemonDetailsState() =
      _$InitialPokemonDetailsStateImpl;
}

/// @nodoc
abstract class _$$LoadingPokemonDetailsStateImplCopyWith<$Res> {
  factory _$$LoadingPokemonDetailsStateImplCopyWith(
          _$LoadingPokemonDetailsStateImpl value,
          $Res Function(_$LoadingPokemonDetailsStateImpl) then) =
      __$$LoadingPokemonDetailsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingPokemonDetailsStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res,
        _$LoadingPokemonDetailsStateImpl>
    implements _$$LoadingPokemonDetailsStateImplCopyWith<$Res> {
  __$$LoadingPokemonDetailsStateImplCopyWithImpl(
      _$LoadingPokemonDetailsStateImpl _value,
      $Res Function(_$LoadingPokemonDetailsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingPokemonDetailsStateImpl implements _LoadingPokemonDetailsState {
  const _$LoadingPokemonDetailsStateImpl();

  @override
  String toString() {
    return 'PokemonDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingPokemonDetailsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) content,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Pokemon pokemon)? content,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? content,
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
    required TResult Function(_InitialPokemonDetailsState value) initial,
    required TResult Function(_LoadingPokemonDetailsState value) loading,
    required TResult Function(_ContentPokemonDetailsState value) content,
    required TResult Function(_ErrorPokemonDetailsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokemonDetailsState value)? initial,
    TResult? Function(_LoadingPokemonDetailsState value)? loading,
    TResult? Function(_ContentPokemonDetailsState value)? content,
    TResult? Function(_ErrorPokemonDetailsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokemonDetailsState value)? initial,
    TResult Function(_LoadingPokemonDetailsState value)? loading,
    TResult Function(_ContentPokemonDetailsState value)? content,
    TResult Function(_ErrorPokemonDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPokemonDetailsState implements PokemonDetailsState {
  const factory _LoadingPokemonDetailsState() =
      _$LoadingPokemonDetailsStateImpl;
}

/// @nodoc
abstract class _$$ContentPokemonDetailsStateImplCopyWith<$Res> {
  factory _$$ContentPokemonDetailsStateImplCopyWith(
          _$ContentPokemonDetailsStateImpl value,
          $Res Function(_$ContentPokemonDetailsStateImpl) then) =
      __$$ContentPokemonDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Pokemon pokemon});

  $PokemonCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$ContentPokemonDetailsStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res,
        _$ContentPokemonDetailsStateImpl>
    implements _$$ContentPokemonDetailsStateImplCopyWith<$Res> {
  __$$ContentPokemonDetailsStateImplCopyWithImpl(
      _$ContentPokemonDetailsStateImpl _value,
      $Res Function(_$ContentPokemonDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
  }) {
    return _then(_$ContentPokemonDetailsStateImpl(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res> get pokemon {
    return $PokemonCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value));
    });
  }
}

/// @nodoc

class _$ContentPokemonDetailsStateImpl implements _ContentPokemonDetailsState {
  const _$ContentPokemonDetailsStateImpl({required this.pokemon});

  @override
  final Pokemon pokemon;

  @override
  String toString() {
    return 'PokemonDetailsState.content(pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentPokemonDetailsStateImpl &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokemon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentPokemonDetailsStateImplCopyWith<_$ContentPokemonDetailsStateImpl>
      get copyWith => __$$ContentPokemonDetailsStateImplCopyWithImpl<
          _$ContentPokemonDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) content,
    required TResult Function(Exception error) error,
  }) {
    return content(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Pokemon pokemon)? content,
    TResult? Function(Exception error)? error,
  }) {
    return content?.call(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPokemonDetailsState value) initial,
    required TResult Function(_LoadingPokemonDetailsState value) loading,
    required TResult Function(_ContentPokemonDetailsState value) content,
    required TResult Function(_ErrorPokemonDetailsState value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokemonDetailsState value)? initial,
    TResult? Function(_LoadingPokemonDetailsState value)? loading,
    TResult? Function(_ContentPokemonDetailsState value)? content,
    TResult? Function(_ErrorPokemonDetailsState value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokemonDetailsState value)? initial,
    TResult Function(_LoadingPokemonDetailsState value)? loading,
    TResult Function(_ContentPokemonDetailsState value)? content,
    TResult Function(_ErrorPokemonDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _ContentPokemonDetailsState implements PokemonDetailsState {
  const factory _ContentPokemonDetailsState({required final Pokemon pokemon}) =
      _$ContentPokemonDetailsStateImpl;

  Pokemon get pokemon;
  @JsonKey(ignore: true)
  _$$ContentPokemonDetailsStateImplCopyWith<_$ContentPokemonDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorPokemonDetailsStateImplCopyWith<$Res> {
  factory _$$ErrorPokemonDetailsStateImplCopyWith(
          _$ErrorPokemonDetailsStateImpl value,
          $Res Function(_$ErrorPokemonDetailsStateImpl) then) =
      __$$ErrorPokemonDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ErrorPokemonDetailsStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res,
        _$ErrorPokemonDetailsStateImpl>
    implements _$$ErrorPokemonDetailsStateImplCopyWith<$Res> {
  __$$ErrorPokemonDetailsStateImplCopyWithImpl(
      _$ErrorPokemonDetailsStateImpl _value,
      $Res Function(_$ErrorPokemonDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorPokemonDetailsStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ErrorPokemonDetailsStateImpl implements _ErrorPokemonDetailsState {
  const _$ErrorPokemonDetailsStateImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'PokemonDetailsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorPokemonDetailsStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorPokemonDetailsStateImplCopyWith<_$ErrorPokemonDetailsStateImpl>
      get copyWith => __$$ErrorPokemonDetailsStateImplCopyWithImpl<
          _$ErrorPokemonDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) content,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Pokemon pokemon)? content,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? content,
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
    required TResult Function(_InitialPokemonDetailsState value) initial,
    required TResult Function(_LoadingPokemonDetailsState value) loading,
    required TResult Function(_ContentPokemonDetailsState value) content,
    required TResult Function(_ErrorPokemonDetailsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokemonDetailsState value)? initial,
    TResult? Function(_LoadingPokemonDetailsState value)? loading,
    TResult? Function(_ContentPokemonDetailsState value)? content,
    TResult? Function(_ErrorPokemonDetailsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokemonDetailsState value)? initial,
    TResult Function(_LoadingPokemonDetailsState value)? loading,
    TResult Function(_ContentPokemonDetailsState value)? content,
    TResult Function(_ErrorPokemonDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPokemonDetailsState implements PokemonDetailsState {
  const factory _ErrorPokemonDetailsState(final Exception error) =
      _$ErrorPokemonDetailsStateImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ErrorPokemonDetailsStateImplCopyWith<_$ErrorPokemonDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
