// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ThemeData theme) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ThemeData theme)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ThemeData theme)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadThemeEvent value) load,
    required TResult Function(_ChangeThemeEvent value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadThemeEvent value)? load,
    TResult? Function(_ChangeThemeEvent value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadThemeEvent value)? load,
    TResult Function(_ChangeThemeEvent value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadThemeEventImplCopyWith<$Res> {
  factory _$$LoadThemeEventImplCopyWith(_$LoadThemeEventImpl value,
          $Res Function(_$LoadThemeEventImpl) then) =
      __$$LoadThemeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadThemeEventImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$LoadThemeEventImpl>
    implements _$$LoadThemeEventImplCopyWith<$Res> {
  __$$LoadThemeEventImplCopyWithImpl(
      _$LoadThemeEventImpl _value, $Res Function(_$LoadThemeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadThemeEventImpl implements _LoadThemeEvent {
  const _$LoadThemeEventImpl();

  @override
  String toString() {
    return 'ThemeEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadThemeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ThemeData theme) change,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ThemeData theme)? change,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ThemeData theme)? change,
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
    required TResult Function(_LoadThemeEvent value) load,
    required TResult Function(_ChangeThemeEvent value) change,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadThemeEvent value)? load,
    TResult? Function(_ChangeThemeEvent value)? change,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadThemeEvent value)? load,
    TResult Function(_ChangeThemeEvent value)? change,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadThemeEvent implements ThemeEvent {
  const factory _LoadThemeEvent() = _$LoadThemeEventImpl;
}

/// @nodoc
abstract class _$$ChangeThemeEventImplCopyWith<$Res> {
  factory _$$ChangeThemeEventImplCopyWith(_$ChangeThemeEventImpl value,
          $Res Function(_$ChangeThemeEventImpl) then) =
      __$$ChangeThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeData theme});
}

/// @nodoc
class __$$ChangeThemeEventImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ChangeThemeEventImpl>
    implements _$$ChangeThemeEventImplCopyWith<$Res> {
  __$$ChangeThemeEventImplCopyWithImpl(_$ChangeThemeEventImpl _value,
      $Res Function(_$ChangeThemeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$ChangeThemeEventImpl(
      null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$ChangeThemeEventImpl implements _ChangeThemeEvent {
  const _$ChangeThemeEventImpl(this.theme);

  @override
  final ThemeData theme;

  @override
  String toString() {
    return 'ThemeEvent.change(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeThemeEventImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeThemeEventImplCopyWith<_$ChangeThemeEventImpl> get copyWith =>
      __$$ChangeThemeEventImplCopyWithImpl<_$ChangeThemeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(ThemeData theme) change,
  }) {
    return change(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(ThemeData theme)? change,
  }) {
    return change?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(ThemeData theme)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadThemeEvent value) load,
    required TResult Function(_ChangeThemeEvent value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadThemeEvent value)? load,
    TResult? Function(_ChangeThemeEvent value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadThemeEvent value)? load,
    TResult Function(_ChangeThemeEvent value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _ChangeThemeEvent implements ThemeEvent {
  const factory _ChangeThemeEvent(final ThemeData theme) =
      _$ChangeThemeEventImpl;

  ThemeData get theme;
  @JsonKey(ignore: true)
  _$$ChangeThemeEventImplCopyWith<_$ChangeThemeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  ThemeData get currentTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeData currentTheme});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTheme = null,
  }) {
    return _then(_value.copyWith(
      currentTheme: null == currentTheme
          ? _value.currentTheme
          : currentTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData currentTheme});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTheme = null,
  }) {
    return _then(_$InitialImpl(
      currentTheme: null == currentTheme
          ? _value.currentTheme
          : currentTheme // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.currentTheme});

  @override
  final ThemeData currentTheme;

  @override
  String toString() {
    return 'ThemeState(currentTheme: $currentTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.currentTheme, currentTheme) ||
                other.currentTheme == currentTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ThemeState {
  const factory _Initial({required final ThemeData currentTheme}) =
      _$InitialImpl;

  @override
  ThemeData get currentTheme;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
