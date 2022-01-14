// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeStateOnSuccess onSuccess(List<ImageItemResponse> images) {
    return HomeStateOnSuccess(
      images,
    );
  }

  HomeStateOnFailure onFailure() {
    return const HomeStateOnFailure();
  }

  HomeStateOnLoading onLoading() {
    return const HomeStateOnLoading();
  }

  HomeStateOnComplete onComplete() {
    return const HomeStateOnComplete();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageItemResponse> images) onSuccess,
    required TResult Function() onFailure,
    required TResult Function() onLoading,
    required TResult Function() onComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateOnSuccess value) onSuccess,
    required TResult Function(HomeStateOnFailure value) onFailure,
    required TResult Function(HomeStateOnLoading value) onLoading,
    required TResult Function(HomeStateOnComplete value) onComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $HomeStateOnSuccessCopyWith<$Res> {
  factory $HomeStateOnSuccessCopyWith(
          HomeStateOnSuccess value, $Res Function(HomeStateOnSuccess) then) =
      _$HomeStateOnSuccessCopyWithImpl<$Res>;
  $Res call({List<ImageItemResponse> images});
}

/// @nodoc
class _$HomeStateOnSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateOnSuccessCopyWith<$Res> {
  _$HomeStateOnSuccessCopyWithImpl(
      HomeStateOnSuccess _value, $Res Function(HomeStateOnSuccess) _then)
      : super(_value, (v) => _then(v as HomeStateOnSuccess));

  @override
  HomeStateOnSuccess get _value => super._value as HomeStateOnSuccess;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(HomeStateOnSuccess(
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageItemResponse>,
    ));
  }
}

/// @nodoc

class _$HomeStateOnSuccess implements HomeStateOnSuccess {
  const _$HomeStateOnSuccess(this.images);

  @override
  final List<ImageItemResponse> images;

  @override
  String toString() {
    return 'HomeState.onSuccess(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateOnSuccess &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  $HomeStateOnSuccessCopyWith<HomeStateOnSuccess> get copyWith =>
      _$HomeStateOnSuccessCopyWithImpl<HomeStateOnSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageItemResponse> images) onSuccess,
    required TResult Function() onFailure,
    required TResult Function() onLoading,
    required TResult Function() onComplete,
  }) {
    return onSuccess(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
  }) {
    return onSuccess?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
    required TResult orElse(),
  }) {
    if (onSuccess != null) {
      return onSuccess(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateOnSuccess value) onSuccess,
    required TResult Function(HomeStateOnFailure value) onFailure,
    required TResult Function(HomeStateOnLoading value) onLoading,
    required TResult Function(HomeStateOnComplete value) onComplete,
  }) {
    return onSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
  }) {
    return onSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
    required TResult orElse(),
  }) {
    if (onSuccess != null) {
      return onSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeStateOnSuccess implements HomeState {
  const factory HomeStateOnSuccess(List<ImageItemResponse> images) =
      _$HomeStateOnSuccess;

  List<ImageItemResponse> get images;
  @JsonKey(ignore: true)
  $HomeStateOnSuccessCopyWith<HomeStateOnSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateOnFailureCopyWith<$Res> {
  factory $HomeStateOnFailureCopyWith(
          HomeStateOnFailure value, $Res Function(HomeStateOnFailure) then) =
      _$HomeStateOnFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateOnFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateOnFailureCopyWith<$Res> {
  _$HomeStateOnFailureCopyWithImpl(
      HomeStateOnFailure _value, $Res Function(HomeStateOnFailure) _then)
      : super(_value, (v) => _then(v as HomeStateOnFailure));

  @override
  HomeStateOnFailure get _value => super._value as HomeStateOnFailure;
}

/// @nodoc

class _$HomeStateOnFailure implements HomeStateOnFailure {
  const _$HomeStateOnFailure();

  @override
  String toString() {
    return 'HomeState.onFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeStateOnFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageItemResponse> images) onSuccess,
    required TResult Function() onFailure,
    required TResult Function() onLoading,
    required TResult Function() onComplete,
  }) {
    return onFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
  }) {
    return onFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
    required TResult orElse(),
  }) {
    if (onFailure != null) {
      return onFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateOnSuccess value) onSuccess,
    required TResult Function(HomeStateOnFailure value) onFailure,
    required TResult Function(HomeStateOnLoading value) onLoading,
    required TResult Function(HomeStateOnComplete value) onComplete,
  }) {
    return onFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
  }) {
    return onFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
    required TResult orElse(),
  }) {
    if (onFailure != null) {
      return onFailure(this);
    }
    return orElse();
  }
}

abstract class HomeStateOnFailure implements HomeState {
  const factory HomeStateOnFailure() = _$HomeStateOnFailure;
}

/// @nodoc
abstract class $HomeStateOnLoadingCopyWith<$Res> {
  factory $HomeStateOnLoadingCopyWith(
          HomeStateOnLoading value, $Res Function(HomeStateOnLoading) then) =
      _$HomeStateOnLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateOnLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateOnLoadingCopyWith<$Res> {
  _$HomeStateOnLoadingCopyWithImpl(
      HomeStateOnLoading _value, $Res Function(HomeStateOnLoading) _then)
      : super(_value, (v) => _then(v as HomeStateOnLoading));

  @override
  HomeStateOnLoading get _value => super._value as HomeStateOnLoading;
}

/// @nodoc

class _$HomeStateOnLoading implements HomeStateOnLoading {
  const _$HomeStateOnLoading();

  @override
  String toString() {
    return 'HomeState.onLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeStateOnLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageItemResponse> images) onSuccess,
    required TResult Function() onFailure,
    required TResult Function() onLoading,
    required TResult Function() onComplete,
  }) {
    return onLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
  }) {
    return onLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateOnSuccess value) onSuccess,
    required TResult Function(HomeStateOnFailure value) onFailure,
    required TResult Function(HomeStateOnLoading value) onLoading,
    required TResult Function(HomeStateOnComplete value) onComplete,
  }) {
    return onLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
  }) {
    return onLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading(this);
    }
    return orElse();
  }
}

abstract class HomeStateOnLoading implements HomeState {
  const factory HomeStateOnLoading() = _$HomeStateOnLoading;
}

/// @nodoc
abstract class $HomeStateOnCompleteCopyWith<$Res> {
  factory $HomeStateOnCompleteCopyWith(
          HomeStateOnComplete value, $Res Function(HomeStateOnComplete) then) =
      _$HomeStateOnCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateOnCompleteCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateOnCompleteCopyWith<$Res> {
  _$HomeStateOnCompleteCopyWithImpl(
      HomeStateOnComplete _value, $Res Function(HomeStateOnComplete) _then)
      : super(_value, (v) => _then(v as HomeStateOnComplete));

  @override
  HomeStateOnComplete get _value => super._value as HomeStateOnComplete;
}

/// @nodoc

class _$HomeStateOnComplete implements HomeStateOnComplete {
  const _$HomeStateOnComplete();

  @override
  String toString() {
    return 'HomeState.onComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeStateOnComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageItemResponse> images) onSuccess,
    required TResult Function() onFailure,
    required TResult Function() onLoading,
    required TResult Function() onComplete,
  }) {
    return onComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
  }) {
    return onComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageItemResponse> images)? onSuccess,
    TResult Function()? onFailure,
    TResult Function()? onLoading,
    TResult Function()? onComplete,
    required TResult orElse(),
  }) {
    if (onComplete != null) {
      return onComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateOnSuccess value) onSuccess,
    required TResult Function(HomeStateOnFailure value) onFailure,
    required TResult Function(HomeStateOnLoading value) onLoading,
    required TResult Function(HomeStateOnComplete value) onComplete,
  }) {
    return onComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
  }) {
    return onComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateOnSuccess value)? onSuccess,
    TResult Function(HomeStateOnFailure value)? onFailure,
    TResult Function(HomeStateOnLoading value)? onLoading,
    TResult Function(HomeStateOnComplete value)? onComplete,
    required TResult orElse(),
  }) {
    if (onComplete != null) {
      return onComplete(this);
    }
    return orElse();
  }
}

abstract class HomeStateOnComplete implements HomeState {
  const factory HomeStateOnComplete() = _$HomeStateOnComplete;
}
