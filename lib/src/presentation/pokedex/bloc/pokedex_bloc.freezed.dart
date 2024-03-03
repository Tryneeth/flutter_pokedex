// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokedexEvent {
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
    required TResult Function(_LoadPokedexEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPokedexEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPokedexEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexEventCopyWith<$Res> {
  factory $PokedexEventCopyWith(
          PokedexEvent value, $Res Function(PokedexEvent) then) =
      _$PokedexEventCopyWithImpl<$Res, PokedexEvent>;
}

/// @nodoc
class _$PokedexEventCopyWithImpl<$Res, $Val extends PokedexEvent>
    implements $PokedexEventCopyWith<$Res> {
  _$PokedexEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadPokedexEventImplCopyWith<$Res> {
  factory _$$LoadPokedexEventImplCopyWith(_$LoadPokedexEventImpl value,
          $Res Function(_$LoadPokedexEventImpl) then) =
      __$$LoadPokedexEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadPokedexEventImplCopyWithImpl<$Res>
    extends _$PokedexEventCopyWithImpl<$Res, _$LoadPokedexEventImpl>
    implements _$$LoadPokedexEventImplCopyWith<$Res> {
  __$$LoadPokedexEventImplCopyWithImpl(_$LoadPokedexEventImpl _value,
      $Res Function(_$LoadPokedexEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadPokedexEventImpl implements _LoadPokedexEvent {
  const _$LoadPokedexEventImpl();

  @override
  String toString() {
    return 'PokedexEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadPokedexEventImpl);
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
    required TResult Function(_LoadPokedexEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPokedexEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPokedexEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadPokedexEvent implements PokedexEvent {
  const factory _LoadPokedexEvent() = _$LoadPokedexEventImpl;
}

/// @nodoc
mixin _$PokedexState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> names) content,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> names)? content,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> names)? content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPokedexState value) initial,
    required TResult Function(_LoadingPokedexState value) loading,
    required TResult Function(_ContentPokedexState value) content,
    required TResult Function(_ErrorPokedexState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokedexState value)? initial,
    TResult? Function(_LoadingPokedexState value)? loading,
    TResult? Function(_ContentPokedexState value)? content,
    TResult? Function(_ErrorPokedexState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokedexState value)? initial,
    TResult Function(_LoadingPokedexState value)? loading,
    TResult Function(_ContentPokedexState value)? content,
    TResult Function(_ErrorPokedexState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexStateCopyWith<$Res> {
  factory $PokedexStateCopyWith(
          PokedexState value, $Res Function(PokedexState) then) =
      _$PokedexStateCopyWithImpl<$Res, PokedexState>;
}

/// @nodoc
class _$PokedexStateCopyWithImpl<$Res, $Val extends PokedexState>
    implements $PokedexStateCopyWith<$Res> {
  _$PokedexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialPokedexStateImplCopyWith<$Res> {
  factory _$$InitialPokedexStateImplCopyWith(_$InitialPokedexStateImpl value,
          $Res Function(_$InitialPokedexStateImpl) then) =
      __$$InitialPokedexStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialPokedexStateImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$InitialPokedexStateImpl>
    implements _$$InitialPokedexStateImplCopyWith<$Res> {
  __$$InitialPokedexStateImplCopyWithImpl(_$InitialPokedexStateImpl _value,
      $Res Function(_$InitialPokedexStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPokedexStateImpl implements _InitialPokedexState {
  const _$InitialPokedexStateImpl();

  @override
  String toString() {
    return 'PokedexState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPokedexStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> names) content,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> names)? content,
    TResult? Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> names)? content,
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
    required TResult Function(_InitialPokedexState value) initial,
    required TResult Function(_LoadingPokedexState value) loading,
    required TResult Function(_ContentPokedexState value) content,
    required TResult Function(_ErrorPokedexState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokedexState value)? initial,
    TResult? Function(_LoadingPokedexState value)? loading,
    TResult? Function(_ContentPokedexState value)? content,
    TResult? Function(_ErrorPokedexState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokedexState value)? initial,
    TResult Function(_LoadingPokedexState value)? loading,
    TResult Function(_ContentPokedexState value)? content,
    TResult Function(_ErrorPokedexState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPokedexState implements PokedexState {
  const factory _InitialPokedexState() = _$InitialPokedexStateImpl;
}

/// @nodoc
abstract class _$$LoadingPokedexStateImplCopyWith<$Res> {
  factory _$$LoadingPokedexStateImplCopyWith(_$LoadingPokedexStateImpl value,
          $Res Function(_$LoadingPokedexStateImpl) then) =
      __$$LoadingPokedexStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingPokedexStateImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$LoadingPokedexStateImpl>
    implements _$$LoadingPokedexStateImplCopyWith<$Res> {
  __$$LoadingPokedexStateImplCopyWithImpl(_$LoadingPokedexStateImpl _value,
      $Res Function(_$LoadingPokedexStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingPokedexStateImpl implements _LoadingPokedexState {
  const _$LoadingPokedexStateImpl();

  @override
  String toString() {
    return 'PokedexState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingPokedexStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> names) content,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> names)? content,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> names)? content,
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
    required TResult Function(_InitialPokedexState value) initial,
    required TResult Function(_LoadingPokedexState value) loading,
    required TResult Function(_ContentPokedexState value) content,
    required TResult Function(_ErrorPokedexState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokedexState value)? initial,
    TResult? Function(_LoadingPokedexState value)? loading,
    TResult? Function(_ContentPokedexState value)? content,
    TResult? Function(_ErrorPokedexState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokedexState value)? initial,
    TResult Function(_LoadingPokedexState value)? loading,
    TResult Function(_ContentPokedexState value)? content,
    TResult Function(_ErrorPokedexState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPokedexState implements PokedexState {
  const factory _LoadingPokedexState() = _$LoadingPokedexStateImpl;
}

/// @nodoc
abstract class _$$ContentPokedexStateImplCopyWith<$Res> {
  factory _$$ContentPokedexStateImplCopyWith(_$ContentPokedexStateImpl value,
          $Res Function(_$ContentPokedexStateImpl) then) =
      __$$ContentPokedexStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> names});
}

/// @nodoc
class __$$ContentPokedexStateImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$ContentPokedexStateImpl>
    implements _$$ContentPokedexStateImplCopyWith<$Res> {
  __$$ContentPokedexStateImplCopyWithImpl(_$ContentPokedexStateImpl _value,
      $Res Function(_$ContentPokedexStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
  }) {
    return _then(_$ContentPokedexStateImpl(
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ContentPokedexStateImpl implements _ContentPokedexState {
  const _$ContentPokedexStateImpl({required final List<String> names})
      : _names = names;

  final List<String> _names;
  @override
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'PokedexState.content(names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentPokedexStateImpl &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentPokedexStateImplCopyWith<_$ContentPokedexStateImpl> get copyWith =>
      __$$ContentPokedexStateImplCopyWithImpl<_$ContentPokedexStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> names) content,
    required TResult Function(Exception error) error,
  }) {
    return content(names);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> names)? content,
    TResult? Function(Exception error)? error,
  }) {
    return content?.call(names);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> names)? content,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(names);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPokedexState value) initial,
    required TResult Function(_LoadingPokedexState value) loading,
    required TResult Function(_ContentPokedexState value) content,
    required TResult Function(_ErrorPokedexState value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokedexState value)? initial,
    TResult? Function(_LoadingPokedexState value)? loading,
    TResult? Function(_ContentPokedexState value)? content,
    TResult? Function(_ErrorPokedexState value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokedexState value)? initial,
    TResult Function(_LoadingPokedexState value)? loading,
    TResult Function(_ContentPokedexState value)? content,
    TResult Function(_ErrorPokedexState value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _ContentPokedexState implements PokedexState {
  const factory _ContentPokedexState({required final List<String> names}) =
      _$ContentPokedexStateImpl;

  List<String> get names;
  @JsonKey(ignore: true)
  _$$ContentPokedexStateImplCopyWith<_$ContentPokedexStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorPokedexStateImplCopyWith<$Res> {
  factory _$$ErrorPokedexStateImplCopyWith(_$ErrorPokedexStateImpl value,
          $Res Function(_$ErrorPokedexStateImpl) then) =
      __$$ErrorPokedexStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ErrorPokedexStateImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$ErrorPokedexStateImpl>
    implements _$$ErrorPokedexStateImplCopyWith<$Res> {
  __$$ErrorPokedexStateImplCopyWithImpl(_$ErrorPokedexStateImpl _value,
      $Res Function(_$ErrorPokedexStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorPokedexStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ErrorPokedexStateImpl implements _ErrorPokedexState {
  const _$ErrorPokedexStateImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'PokedexState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorPokedexStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorPokedexStateImplCopyWith<_$ErrorPokedexStateImpl> get copyWith =>
      __$$ErrorPokedexStateImplCopyWithImpl<_$ErrorPokedexStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> names) content,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> names)? content,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> names)? content,
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
    required TResult Function(_InitialPokedexState value) initial,
    required TResult Function(_LoadingPokedexState value) loading,
    required TResult Function(_ContentPokedexState value) content,
    required TResult Function(_ErrorPokedexState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPokedexState value)? initial,
    TResult? Function(_LoadingPokedexState value)? loading,
    TResult? Function(_ContentPokedexState value)? content,
    TResult? Function(_ErrorPokedexState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPokedexState value)? initial,
    TResult Function(_LoadingPokedexState value)? loading,
    TResult Function(_ContentPokedexState value)? content,
    TResult Function(_ErrorPokedexState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPokedexState implements PokedexState {
  const factory _ErrorPokedexState(final Exception error) =
      _$ErrorPokedexStateImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ErrorPokedexStateImplCopyWith<_$ErrorPokedexStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
