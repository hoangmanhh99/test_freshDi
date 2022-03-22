// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cultivation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CultivationStateTearOff {
  const _$CultivationStateTearOff();

  CultivationStateData call(CultivationModel data) {
    return CultivationStateData(
      data,
    );
  }

  CultivationStateLoading loading() {
    return const CultivationStateLoading();
  }

  CultivationStateError error(dynamic error) {
    return CultivationStateError(
      error,
    );
  }
}

/// @nodoc
const $CultivationState = _$CultivationStateTearOff();

/// @nodoc
mixin _$CultivationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CultivationModel data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(CultivationModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CultivationModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CultivationStateData value) $default, {
    required TResult Function(CultivationStateLoading value) loading,
    required TResult Function(CultivationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CultivationStateData value)? $default, {
    TResult Function(CultivationStateLoading value)? loading,
    TResult Function(CultivationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CultivationStateData value)? $default, {
    TResult Function(CultivationStateLoading value)? loading,
    TResult Function(CultivationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CultivationStateCopyWith<$Res> {
  factory $CultivationStateCopyWith(
          CultivationState value, $Res Function(CultivationState) then) =
      _$CultivationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CultivationStateCopyWithImpl<$Res>
    implements $CultivationStateCopyWith<$Res> {
  _$CultivationStateCopyWithImpl(this._value, this._then);

  final CultivationState _value;
  // ignore: unused_field
  final $Res Function(CultivationState) _then;
}

/// @nodoc
abstract class $CultivationStateDataCopyWith<$Res> {
  factory $CultivationStateDataCopyWith(CultivationStateData value,
          $Res Function(CultivationStateData) then) =
      _$CultivationStateDataCopyWithImpl<$Res>;
  $Res call({CultivationModel data});
}

/// @nodoc
class _$CultivationStateDataCopyWithImpl<$Res>
    extends _$CultivationStateCopyWithImpl<$Res>
    implements $CultivationStateDataCopyWith<$Res> {
  _$CultivationStateDataCopyWithImpl(
      CultivationStateData _value, $Res Function(CultivationStateData) _then)
      : super(_value, (v) => _then(v as CultivationStateData));

  @override
  CultivationStateData get _value => super._value as CultivationStateData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(CultivationStateData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CultivationModel,
    ));
  }
}

/// @nodoc

class _$CultivationStateData implements CultivationStateData {
  const _$CultivationStateData(this.data);

  @override
  final CultivationModel data;

  @override
  String toString() {
    return 'CultivationState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CultivationStateData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $CultivationStateDataCopyWith<CultivationStateData> get copyWith =>
      _$CultivationStateDataCopyWithImpl<CultivationStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CultivationModel data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(CultivationModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CultivationModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CultivationStateData value) $default, {
    required TResult Function(CultivationStateLoading value) loading,
    required TResult Function(CultivationStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CultivationStateData value)? $default, {
    TResult Function(CultivationStateLoading value)? loading,
    TResult Function(CultivationStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CultivationStateData value)? $default, {
    TResult Function(CultivationStateLoading value)? loading,
    TResult Function(CultivationStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CultivationStateData implements CultivationState {
  const factory CultivationStateData(CultivationModel data) =
      _$CultivationStateData;

  CultivationModel get data;
  @JsonKey(ignore: true)
  $CultivationStateDataCopyWith<CultivationStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CultivationStateLoadingCopyWith<$Res> {
  factory $CultivationStateLoadingCopyWith(CultivationStateLoading value,
          $Res Function(CultivationStateLoading) then) =
      _$CultivationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CultivationStateLoadingCopyWithImpl<$Res>
    extends _$CultivationStateCopyWithImpl<$Res>
    implements $CultivationStateLoadingCopyWith<$Res> {
  _$CultivationStateLoadingCopyWithImpl(CultivationStateLoading _value,
      $Res Function(CultivationStateLoading) _then)
      : super(_value, (v) => _then(v as CultivationStateLoading));

  @override
  CultivationStateLoading get _value => super._value as CultivationStateLoading;
}

/// @nodoc

class _$CultivationStateLoading implements CultivationStateLoading {
  const _$CultivationStateLoading();

  @override
  String toString() {
    return 'CultivationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CultivationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CultivationModel data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(CultivationModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CultivationModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CultivationStateData value) $default, {
    required TResult Function(CultivationStateLoading value) loading,
    required TResult Function(CultivationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CultivationStateData value)? $default, {
    TResult Function(CultivationStateLoading value)? loading,
    TResult Function(CultivationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CultivationStateData value)? $default, {
    TResult Function(CultivationStateLoading value)? loading,
    TResult Function(CultivationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CultivationStateLoading implements CultivationState {
  const factory CultivationStateLoading() = _$CultivationStateLoading;
}

/// @nodoc
abstract class $CultivationStateErrorCopyWith<$Res> {
  factory $CultivationStateErrorCopyWith(CultivationStateError value,
          $Res Function(CultivationStateError) then) =
      _$CultivationStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$CultivationStateErrorCopyWithImpl<$Res>
    extends _$CultivationStateCopyWithImpl<$Res>
    implements $CultivationStateErrorCopyWith<$Res> {
  _$CultivationStateErrorCopyWithImpl(
      CultivationStateError _value, $Res Function(CultivationStateError) _then)
      : super(_value, (v) => _then(v as CultivationStateError));

  @override
  CultivationStateError get _value => super._value as CultivationStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CultivationStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CultivationStateError implements CultivationStateError {
  const _$CultivationStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'CultivationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CultivationStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $CultivationStateErrorCopyWith<CultivationStateError> get copyWith =>
      _$CultivationStateErrorCopyWithImpl<CultivationStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CultivationModel data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(CultivationModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CultivationModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CultivationStateData value) $default, {
    required TResult Function(CultivationStateLoading value) loading,
    required TResult Function(CultivationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CultivationStateData value)? $default, {
    TResult Function(CultivationStateLoading value)? loading,
    TResult Function(CultivationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CultivationStateData value)? $default, {
    TResult Function(CultivationStateLoading value)? loading,
    TResult Function(CultivationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CultivationStateError implements CultivationState {
  const factory CultivationStateError(dynamic error) = _$CultivationStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  $CultivationStateErrorCopyWith<CultivationStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
