// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailures,
    required TResult Function() serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailures,
    TResult? Function()? serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_clientFailures value) clientFailures,
    required TResult Function(_serverFailures value) serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_clientFailures value)? clientFailures,
    TResult? Function(_serverFailures value)? serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_clientFailures value)? clientFailures,
    TResult Function(_serverFailures value)? serverFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailuresCopyWith<$Res> {
  factory $MainFailuresCopyWith(
          MainFailures value, $Res Function(MainFailures) then) =
      _$MainFailuresCopyWithImpl<$Res, MainFailures>;
}

/// @nodoc
class _$MainFailuresCopyWithImpl<$Res, $Val extends MainFailures>
    implements $MainFailuresCopyWith<$Res> {
  _$MainFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$clientFailuresImplCopyWith<$Res> {
  factory _$$clientFailuresImplCopyWith(_$clientFailuresImpl value,
          $Res Function(_$clientFailuresImpl) then) =
      __$$clientFailuresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$clientFailuresImplCopyWithImpl<$Res>
    extends _$MainFailuresCopyWithImpl<$Res, _$clientFailuresImpl>
    implements _$$clientFailuresImplCopyWith<$Res> {
  __$$clientFailuresImplCopyWithImpl(
      _$clientFailuresImpl _value, $Res Function(_$clientFailuresImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$clientFailuresImpl implements _clientFailures {
  const _$clientFailuresImpl();

  @override
  String toString() {
    return 'MainFailures.clientFailures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$clientFailuresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailures,
    required TResult Function() serverFailures,
  }) {
    return clientFailures();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailures,
    TResult? Function()? serverFailures,
  }) {
    return clientFailures?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
    required TResult orElse(),
  }) {
    if (clientFailures != null) {
      return clientFailures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_clientFailures value) clientFailures,
    required TResult Function(_serverFailures value) serverFailures,
  }) {
    return clientFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_clientFailures value)? clientFailures,
    TResult? Function(_serverFailures value)? serverFailures,
  }) {
    return clientFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_clientFailures value)? clientFailures,
    TResult Function(_serverFailures value)? serverFailures,
    required TResult orElse(),
  }) {
    if (clientFailures != null) {
      return clientFailures(this);
    }
    return orElse();
  }
}

abstract class _clientFailures implements MainFailures {
  const factory _clientFailures() = _$clientFailuresImpl;
}

/// @nodoc
abstract class _$$serverFailuresImplCopyWith<$Res> {
  factory _$$serverFailuresImplCopyWith(_$serverFailuresImpl value,
          $Res Function(_$serverFailuresImpl) then) =
      __$$serverFailuresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$serverFailuresImplCopyWithImpl<$Res>
    extends _$MainFailuresCopyWithImpl<$Res, _$serverFailuresImpl>
    implements _$$serverFailuresImplCopyWith<$Res> {
  __$$serverFailuresImplCopyWithImpl(
      _$serverFailuresImpl _value, $Res Function(_$serverFailuresImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$serverFailuresImpl implements _serverFailures {
  const _$serverFailuresImpl();

  @override
  String toString() {
    return 'MainFailures.serverFailures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$serverFailuresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailures,
    required TResult Function() serverFailures,
  }) {
    return serverFailures();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailures,
    TResult? Function()? serverFailures,
  }) {
    return serverFailures?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
    required TResult orElse(),
  }) {
    if (serverFailures != null) {
      return serverFailures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_clientFailures value) clientFailures,
    required TResult Function(_serverFailures value) serverFailures,
  }) {
    return serverFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_clientFailures value)? clientFailures,
    TResult? Function(_serverFailures value)? serverFailures,
  }) {
    return serverFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_clientFailures value)? clientFailures,
    TResult Function(_serverFailures value)? serverFailures,
    required TResult orElse(),
  }) {
    if (serverFailures != null) {
      return serverFailures(this);
    }
    return orElse();
  }
}

abstract class _serverFailures implements MainFailures {
  const factory _serverFailures() = _$serverFailuresImpl;
}
