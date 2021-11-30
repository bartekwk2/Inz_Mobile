// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoEventTearOff {
  const _$PhotoEventTearOff();

  _UploadPhoto uploadPhoto({required File photo}) {
    return _UploadPhoto(
      photo: photo,
    );
  }

  _ErrorOccured errorOccured({required String errorMsg}) {
    return _ErrorOccured(
      errorMsg: errorMsg,
    );
  }
}

/// @nodoc
const $PhotoEvent = _$PhotoEventTearOff();

/// @nodoc
mixin _$PhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) uploadPhoto,
    required TResult Function(String errorMsg) errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File photo)? uploadPhoto,
    TResult Function(String errorMsg)? errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? uploadPhoto,
    TResult Function(String errorMsg)? errorOccured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_ErrorOccured value)? errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoEventCopyWith<$Res> {
  factory $PhotoEventCopyWith(
          PhotoEvent value, $Res Function(PhotoEvent) then) =
      _$PhotoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoEventCopyWithImpl<$Res> implements $PhotoEventCopyWith<$Res> {
  _$PhotoEventCopyWithImpl(this._value, this._then);

  final PhotoEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoEvent) _then;
}

/// @nodoc
abstract class _$UploadPhotoCopyWith<$Res> {
  factory _$UploadPhotoCopyWith(
          _UploadPhoto value, $Res Function(_UploadPhoto) then) =
      __$UploadPhotoCopyWithImpl<$Res>;
  $Res call({File photo});
}

/// @nodoc
class __$UploadPhotoCopyWithImpl<$Res> extends _$PhotoEventCopyWithImpl<$Res>
    implements _$UploadPhotoCopyWith<$Res> {
  __$UploadPhotoCopyWithImpl(
      _UploadPhoto _value, $Res Function(_UploadPhoto) _then)
      : super(_value, (v) => _then(v as _UploadPhoto));

  @override
  _UploadPhoto get _value => super._value as _UploadPhoto;

  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_UploadPhoto(
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UploadPhoto implements _UploadPhoto {
  const _$_UploadPhoto({required this.photo});

  @override
  final File photo;

  @override
  String toString() {
    return 'PhotoEvent.uploadPhoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadPhoto &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  _$UploadPhotoCopyWith<_UploadPhoto> get copyWith =>
      __$UploadPhotoCopyWithImpl<_UploadPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) uploadPhoto,
    required TResult Function(String errorMsg) errorOccured,
  }) {
    return uploadPhoto(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File photo)? uploadPhoto,
    TResult Function(String errorMsg)? errorOccured,
  }) {
    return uploadPhoto?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? uploadPhoto,
    TResult Function(String errorMsg)? errorOccured,
    required TResult orElse(),
  }) {
    if (uploadPhoto != null) {
      return uploadPhoto(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return uploadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_ErrorOccured value)? errorOccured,
  }) {
    return uploadPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (uploadPhoto != null) {
      return uploadPhoto(this);
    }
    return orElse();
  }
}

abstract class _UploadPhoto implements PhotoEvent {
  const factory _UploadPhoto({required File photo}) = _$_UploadPhoto;

  File get photo;
  @JsonKey(ignore: true)
  _$UploadPhotoCopyWith<_UploadPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorOccuredCopyWith<$Res> {
  factory _$ErrorOccuredCopyWith(
          _ErrorOccured value, $Res Function(_ErrorOccured) then) =
      __$ErrorOccuredCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class __$ErrorOccuredCopyWithImpl<$Res> extends _$PhotoEventCopyWithImpl<$Res>
    implements _$ErrorOccuredCopyWith<$Res> {
  __$ErrorOccuredCopyWithImpl(
      _ErrorOccured _value, $Res Function(_ErrorOccured) _then)
      : super(_value, (v) => _then(v as _ErrorOccured));

  @override
  _ErrorOccured get _value => super._value as _ErrorOccured;

  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_ErrorOccured(
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorOccured implements _ErrorOccured {
  const _$_ErrorOccured({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'PhotoEvent.errorOccured(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorOccured &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  _$ErrorOccuredCopyWith<_ErrorOccured> get copyWith =>
      __$ErrorOccuredCopyWithImpl<_ErrorOccured>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photo) uploadPhoto,
    required TResult Function(String errorMsg) errorOccured,
  }) {
    return errorOccured(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File photo)? uploadPhoto,
    TResult Function(String errorMsg)? errorOccured,
  }) {
    return errorOccured?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photo)? uploadPhoto,
    TResult Function(String errorMsg)? errorOccured,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return errorOccured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_ErrorOccured value)? errorOccured,
  }) {
    return errorOccured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured(this);
    }
    return orElse();
  }
}

abstract class _ErrorOccured implements PhotoEvent {
  const factory _ErrorOccured({required String errorMsg}) = _$_ErrorOccured;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$ErrorOccuredCopyWith<_ErrorOccured> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PhotoStateTearOff {
  const _$PhotoStateTearOff();

  _Empty empty(
      {required List<ClassifierResult> classifierResultsNew,
      File? photo,
      required bool errorOccured}) {
    return _Empty(
      classifierResultsNew: classifierResultsNew,
      photo: photo,
      errorOccured: errorOccured,
    );
  }
}

/// @nodoc
const $PhotoState = _$PhotoStateTearOff();

/// @nodoc
mixin _$PhotoState {
  List<ClassifierResult> get classifierResultsNew =>
      throw _privateConstructorUsedError;
  File? get photo => throw _privateConstructorUsedError;
  bool get errorOccured => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ClassifierResult> classifierResultsNew,
            File? photo, bool errorOccured)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ClassifierResult> classifierResultsNew, File? photo,
            bool errorOccured)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ClassifierResult> classifierResultsNew, File? photo,
            bool errorOccured)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoStateCopyWith<PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res>;
  $Res call(
      {List<ClassifierResult> classifierResultsNew,
      File? photo,
      bool errorOccured});
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res> implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  final PhotoState _value;
  // ignore: unused_field
  final $Res Function(PhotoState) _then;

  @override
  $Res call({
    Object? classifierResultsNew = freezed,
    Object? photo = freezed,
    Object? errorOccured = freezed,
  }) {
    return _then(_value.copyWith(
      classifierResultsNew: classifierResultsNew == freezed
          ? _value.classifierResultsNew
          : classifierResultsNew // ignore: cast_nullable_to_non_nullable
              as List<ClassifierResult>,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File?,
      errorOccured: errorOccured == freezed
          ? _value.errorOccured
          : errorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> implements $PhotoStateCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ClassifierResult> classifierResultsNew,
      File? photo,
      bool errorOccured});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$PhotoStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? classifierResultsNew = freezed,
    Object? photo = freezed,
    Object? errorOccured = freezed,
  }) {
    return _then(_Empty(
      classifierResultsNew: classifierResultsNew == freezed
          ? _value.classifierResultsNew
          : classifierResultsNew // ignore: cast_nullable_to_non_nullable
              as List<ClassifierResult>,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File?,
      errorOccured: errorOccured == freezed
          ? _value.errorOccured
          : errorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty(
      {required this.classifierResultsNew,
      this.photo,
      required this.errorOccured});

  @override
  final List<ClassifierResult> classifierResultsNew;
  @override
  final File? photo;
  @override
  final bool errorOccured;

  @override
  String toString() {
    return 'PhotoState.empty(classifierResultsNew: $classifierResultsNew, photo: $photo, errorOccured: $errorOccured)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empty &&
            const DeepCollectionEquality()
                .equals(other.classifierResultsNew, classifierResultsNew) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.errorOccured, errorOccured) ||
                other.errorOccured == errorOccured));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(classifierResultsNew),
      photo,
      errorOccured);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ClassifierResult> classifierResultsNew,
            File? photo, bool errorOccured)
        empty,
  }) {
    return empty(classifierResultsNew, photo, errorOccured);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ClassifierResult> classifierResultsNew, File? photo,
            bool errorOccured)?
        empty,
  }) {
    return empty?.call(classifierResultsNew, photo, errorOccured);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ClassifierResult> classifierResultsNew, File? photo,
            bool errorOccured)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(classifierResultsNew, photo, errorOccured);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements PhotoState {
  const factory _Empty(
      {required List<ClassifierResult> classifierResultsNew,
      File? photo,
      required bool errorOccured}) = _$_Empty;

  @override
  List<ClassifierResult> get classifierResultsNew;
  @override
  File? get photo;
  @override
  bool get errorOccured;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}
