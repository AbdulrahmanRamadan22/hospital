// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cases_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CasesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CasesModel casesModel) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CasesModel casesModel)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CasesModel casesModel)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CasesLoading<T> value) loading,
    required TResult Function(CasesSuccess<T> value) success,
    required TResult Function(CasesError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CasesLoading<T> value)? loading,
    TResult? Function(CasesSuccess<T> value)? success,
    TResult? Function(CasesError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CasesLoading<T> value)? loading,
    TResult Function(CasesSuccess<T> value)? success,
    TResult Function(CasesError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CasesStateCopyWith<T, $Res> {
  factory $CasesStateCopyWith(
          CasesState<T> value, $Res Function(CasesState<T>) then) =
      _$CasesStateCopyWithImpl<T, $Res, CasesState<T>>;
}

/// @nodoc
class _$CasesStateCopyWithImpl<T, $Res, $Val extends CasesState<T>>
    implements $CasesStateCopyWith<T, $Res> {
  _$CasesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$CasesStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CasesState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CasesModel casesModel) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CasesModel casesModel)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CasesModel casesModel)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CasesLoading<T> value) loading,
    required TResult Function(CasesSuccess<T> value) success,
    required TResult Function(CasesError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CasesLoading<T> value)? loading,
    TResult? Function(CasesSuccess<T> value)? success,
    TResult? Function(CasesError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CasesLoading<T> value)? loading,
    TResult Function(CasesSuccess<T> value)? success,
    TResult Function(CasesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements CasesState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$CasesLoadingImplCopyWith<T, $Res> {
  factory _$$CasesLoadingImplCopyWith(_$CasesLoadingImpl<T> value,
          $Res Function(_$CasesLoadingImpl<T>) then) =
      __$$CasesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CasesLoadingImplCopyWithImpl<T, $Res>
    extends _$CasesStateCopyWithImpl<T, $Res, _$CasesLoadingImpl<T>>
    implements _$$CasesLoadingImplCopyWith<T, $Res> {
  __$$CasesLoadingImplCopyWithImpl(
      _$CasesLoadingImpl<T> _value, $Res Function(_$CasesLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CasesLoadingImpl<T> implements CasesLoading<T> {
  const _$CasesLoadingImpl();

  @override
  String toString() {
    return 'CasesState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CasesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CasesModel casesModel) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CasesModel casesModel)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CasesModel casesModel)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CasesLoading<T> value) loading,
    required TResult Function(CasesSuccess<T> value) success,
    required TResult Function(CasesError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CasesLoading<T> value)? loading,
    TResult? Function(CasesSuccess<T> value)? success,
    TResult? Function(CasesError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CasesLoading<T> value)? loading,
    TResult Function(CasesSuccess<T> value)? success,
    TResult Function(CasesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CasesLoading<T> implements CasesState<T> {
  const factory CasesLoading() = _$CasesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CasesSuccessImplCopyWith<T, $Res> {
  factory _$$CasesSuccessImplCopyWith(_$CasesSuccessImpl<T> value,
          $Res Function(_$CasesSuccessImpl<T>) then) =
      __$$CasesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({CasesModel casesModel});
}

/// @nodoc
class __$$CasesSuccessImplCopyWithImpl<T, $Res>
    extends _$CasesStateCopyWithImpl<T, $Res, _$CasesSuccessImpl<T>>
    implements _$$CasesSuccessImplCopyWith<T, $Res> {
  __$$CasesSuccessImplCopyWithImpl(
      _$CasesSuccessImpl<T> _value, $Res Function(_$CasesSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casesModel = null,
  }) {
    return _then(_$CasesSuccessImpl<T>(
      null == casesModel
          ? _value.casesModel
          : casesModel // ignore: cast_nullable_to_non_nullable
              as CasesModel,
    ));
  }
}

/// @nodoc

class _$CasesSuccessImpl<T> implements CasesSuccess<T> {
  const _$CasesSuccessImpl(this.casesModel);

  @override
  final CasesModel casesModel;

  @override
  String toString() {
    return 'CasesState<$T>.success(casesModel: $casesModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CasesSuccessImpl<T> &&
            (identical(other.casesModel, casesModel) ||
                other.casesModel == casesModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, casesModel);

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CasesSuccessImplCopyWith<T, _$CasesSuccessImpl<T>> get copyWith =>
      __$$CasesSuccessImplCopyWithImpl<T, _$CasesSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CasesModel casesModel) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return success(casesModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CasesModel casesModel)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return success?.call(casesModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CasesModel casesModel)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(casesModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CasesLoading<T> value) loading,
    required TResult Function(CasesSuccess<T> value) success,
    required TResult Function(CasesError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CasesLoading<T> value)? loading,
    TResult? Function(CasesSuccess<T> value)? success,
    TResult? Function(CasesError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CasesLoading<T> value)? loading,
    TResult Function(CasesSuccess<T> value)? success,
    TResult Function(CasesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CasesSuccess<T> implements CasesState<T> {
  const factory CasesSuccess(final CasesModel casesModel) =
      _$CasesSuccessImpl<T>;

  CasesModel get casesModel;

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CasesSuccessImplCopyWith<T, _$CasesSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CasesErrorImplCopyWith<T, $Res> {
  factory _$$CasesErrorImplCopyWith(
          _$CasesErrorImpl<T> value, $Res Function(_$CasesErrorImpl<T>) then) =
      __$$CasesErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$CasesErrorImplCopyWithImpl<T, $Res>
    extends _$CasesStateCopyWithImpl<T, $Res, _$CasesErrorImpl<T>>
    implements _$$CasesErrorImplCopyWith<T, $Res> {
  __$$CasesErrorImplCopyWithImpl(
      _$CasesErrorImpl<T> _value, $Res Function(_$CasesErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$CasesErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$CasesErrorImpl<T> implements CasesError<T> {
  const _$CasesErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'CasesState<$T>.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CasesErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CasesErrorImplCopyWith<T, _$CasesErrorImpl<T>> get copyWith =>
      __$$CasesErrorImplCopyWithImpl<T, _$CasesErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CasesModel casesModel) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CasesModel casesModel)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CasesModel casesModel)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CasesLoading<T> value) loading,
    required TResult Function(CasesSuccess<T> value) success,
    required TResult Function(CasesError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CasesLoading<T> value)? loading,
    TResult? Function(CasesSuccess<T> value)? success,
    TResult? Function(CasesError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CasesLoading<T> value)? loading,
    TResult Function(CasesSuccess<T> value)? success,
    TResult Function(CasesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CasesError<T> implements CasesState<T> {
  const factory CasesError(final ApiErrorModel apiErrorModel) =
      _$CasesErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of CasesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CasesErrorImplCopyWith<T, _$CasesErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
