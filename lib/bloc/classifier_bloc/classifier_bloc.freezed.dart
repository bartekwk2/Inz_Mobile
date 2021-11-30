// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classifier_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClassifierEventTearOff {
  const _$ClassifierEventTearOff();

  _PrepareClassification prepareClassification() {
    return const _PrepareClassification();
  }

  _BeginClassification beginClassification() {
    return const _BeginClassification();
  }

  _EndClassification endClassification() {
    return const _EndClassification();
  }

  _ClassificationResults classificationResults(
      {required List<ClassifierResult> classifierResults}) {
    return _ClassificationResults(
      classifierResults: classifierResults,
    );
  }

  _ShowNewSign showNewSign(ClassifierResult character, String sentence) {
    return _ShowNewSign(
      character,
      sentence,
    );
  }

  _ErrorOccured errorOccured({required String errorMsg}) {
    return _ErrorOccured(
      errorMsg: errorMsg,
    );
  }

  _ChangeNewSignVisibility changeNewSignVisibility({required bool visibility}) {
    return _ChangeNewSignVisibility(
      visibility: visibility,
    );
  }

  _LifecycleChanged lifecycleChanged({required CameraActivity cameraActivity}) {
    return _LifecycleChanged(
      cameraActivity: cameraActivity,
    );
  }
}

/// @nodoc
const $ClassifierEvent = _$ClassifierEventTearOff();

/// @nodoc
mixin _$ClassifierEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassifierEventCopyWith<$Res> {
  factory $ClassifierEventCopyWith(
          ClassifierEvent value, $Res Function(ClassifierEvent) then) =
      _$ClassifierEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClassifierEventCopyWithImpl<$Res>
    implements $ClassifierEventCopyWith<$Res> {
  _$ClassifierEventCopyWithImpl(this._value, this._then);

  final ClassifierEvent _value;
  // ignore: unused_field
  final $Res Function(ClassifierEvent) _then;
}

/// @nodoc
abstract class _$PrepareClassificationCopyWith<$Res> {
  factory _$PrepareClassificationCopyWith(_PrepareClassification value,
          $Res Function(_PrepareClassification) then) =
      __$PrepareClassificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$PrepareClassificationCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$PrepareClassificationCopyWith<$Res> {
  __$PrepareClassificationCopyWithImpl(_PrepareClassification _value,
      $Res Function(_PrepareClassification) _then)
      : super(_value, (v) => _then(v as _PrepareClassification));

  @override
  _PrepareClassification get _value => super._value as _PrepareClassification;
}

/// @nodoc

class _$_PrepareClassification implements _PrepareClassification {
  const _$_PrepareClassification();

  @override
  String toString() {
    return 'ClassifierEvent.prepareClassification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PrepareClassification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) {
    return prepareClassification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) {
    return prepareClassification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (prepareClassification != null) {
      return prepareClassification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) {
    return prepareClassification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) {
    return prepareClassification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (prepareClassification != null) {
      return prepareClassification(this);
    }
    return orElse();
  }
}

abstract class _PrepareClassification implements ClassifierEvent {
  const factory _PrepareClassification() = _$_PrepareClassification;
}

/// @nodoc
abstract class _$BeginClassificationCopyWith<$Res> {
  factory _$BeginClassificationCopyWith(_BeginClassification value,
          $Res Function(_BeginClassification) then) =
      __$BeginClassificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$BeginClassificationCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$BeginClassificationCopyWith<$Res> {
  __$BeginClassificationCopyWithImpl(
      _BeginClassification _value, $Res Function(_BeginClassification) _then)
      : super(_value, (v) => _then(v as _BeginClassification));

  @override
  _BeginClassification get _value => super._value as _BeginClassification;
}

/// @nodoc

class _$_BeginClassification implements _BeginClassification {
  const _$_BeginClassification();

  @override
  String toString() {
    return 'ClassifierEvent.beginClassification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BeginClassification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) {
    return beginClassification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) {
    return beginClassification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (beginClassification != null) {
      return beginClassification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) {
    return beginClassification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) {
    return beginClassification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (beginClassification != null) {
      return beginClassification(this);
    }
    return orElse();
  }
}

abstract class _BeginClassification implements ClassifierEvent {
  const factory _BeginClassification() = _$_BeginClassification;
}

/// @nodoc
abstract class _$EndClassificationCopyWith<$Res> {
  factory _$EndClassificationCopyWith(
          _EndClassification value, $Res Function(_EndClassification) then) =
      __$EndClassificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$EndClassificationCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$EndClassificationCopyWith<$Res> {
  __$EndClassificationCopyWithImpl(
      _EndClassification _value, $Res Function(_EndClassification) _then)
      : super(_value, (v) => _then(v as _EndClassification));

  @override
  _EndClassification get _value => super._value as _EndClassification;
}

/// @nodoc

class _$_EndClassification implements _EndClassification {
  const _$_EndClassification();

  @override
  String toString() {
    return 'ClassifierEvent.endClassification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EndClassification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) {
    return endClassification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) {
    return endClassification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (endClassification != null) {
      return endClassification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) {
    return endClassification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) {
    return endClassification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (endClassification != null) {
      return endClassification(this);
    }
    return orElse();
  }
}

abstract class _EndClassification implements ClassifierEvent {
  const factory _EndClassification() = _$_EndClassification;
}

/// @nodoc
abstract class _$ClassificationResultsCopyWith<$Res> {
  factory _$ClassificationResultsCopyWith(_ClassificationResults value,
          $Res Function(_ClassificationResults) then) =
      __$ClassificationResultsCopyWithImpl<$Res>;
  $Res call({List<ClassifierResult> classifierResults});
}

/// @nodoc
class __$ClassificationResultsCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$ClassificationResultsCopyWith<$Res> {
  __$ClassificationResultsCopyWithImpl(_ClassificationResults _value,
      $Res Function(_ClassificationResults) _then)
      : super(_value, (v) => _then(v as _ClassificationResults));

  @override
  _ClassificationResults get _value => super._value as _ClassificationResults;

  @override
  $Res call({
    Object? classifierResults = freezed,
  }) {
    return _then(_ClassificationResults(
      classifierResults: classifierResults == freezed
          ? _value.classifierResults
          : classifierResults // ignore: cast_nullable_to_non_nullable
              as List<ClassifierResult>,
    ));
  }
}

/// @nodoc

class _$_ClassificationResults implements _ClassificationResults {
  const _$_ClassificationResults({required this.classifierResults});

  @override
  final List<ClassifierResult> classifierResults;

  @override
  String toString() {
    return 'ClassifierEvent.classificationResults(classifierResults: $classifierResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClassificationResults &&
            const DeepCollectionEquality()
                .equals(other.classifierResults, classifierResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(classifierResults));

  @JsonKey(ignore: true)
  @override
  _$ClassificationResultsCopyWith<_ClassificationResults> get copyWith =>
      __$ClassificationResultsCopyWithImpl<_ClassificationResults>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) {
    return classificationResults(classifierResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) {
    return classificationResults?.call(classifierResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (classificationResults != null) {
      return classificationResults(classifierResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) {
    return classificationResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) {
    return classificationResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (classificationResults != null) {
      return classificationResults(this);
    }
    return orElse();
  }
}

abstract class _ClassificationResults implements ClassifierEvent {
  const factory _ClassificationResults(
          {required List<ClassifierResult> classifierResults}) =
      _$_ClassificationResults;

  List<ClassifierResult> get classifierResults;
  @JsonKey(ignore: true)
  _$ClassificationResultsCopyWith<_ClassificationResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowNewSignCopyWith<$Res> {
  factory _$ShowNewSignCopyWith(
          _ShowNewSign value, $Res Function(_ShowNewSign) then) =
      __$ShowNewSignCopyWithImpl<$Res>;
  $Res call({ClassifierResult character, String sentence});
}

/// @nodoc
class __$ShowNewSignCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$ShowNewSignCopyWith<$Res> {
  __$ShowNewSignCopyWithImpl(
      _ShowNewSign _value, $Res Function(_ShowNewSign) _then)
      : super(_value, (v) => _then(v as _ShowNewSign));

  @override
  _ShowNewSign get _value => super._value as _ShowNewSign;

  @override
  $Res call({
    Object? character = freezed,
    Object? sentence = freezed,
  }) {
    return _then(_ShowNewSign(
      character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as ClassifierResult,
      sentence == freezed
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowNewSign implements _ShowNewSign {
  const _$_ShowNewSign(this.character, this.sentence);

  @override
  final ClassifierResult character;
  @override
  final String sentence;

  @override
  String toString() {
    return 'ClassifierEvent.showNewSign(character: $character, sentence: $sentence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowNewSign &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.sentence, sentence) ||
                other.sentence == sentence));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character, sentence);

  @JsonKey(ignore: true)
  @override
  _$ShowNewSignCopyWith<_ShowNewSign> get copyWith =>
      __$ShowNewSignCopyWithImpl<_ShowNewSign>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) {
    return showNewSign(character, sentence);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) {
    return showNewSign?.call(character, sentence);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (showNewSign != null) {
      return showNewSign(character, sentence);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) {
    return showNewSign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) {
    return showNewSign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (showNewSign != null) {
      return showNewSign(this);
    }
    return orElse();
  }
}

abstract class _ShowNewSign implements ClassifierEvent {
  const factory _ShowNewSign(ClassifierResult character, String sentence) =
      _$_ShowNewSign;

  ClassifierResult get character;
  String get sentence;
  @JsonKey(ignore: true)
  _$ShowNewSignCopyWith<_ShowNewSign> get copyWith =>
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
class __$ErrorOccuredCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
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
    return 'ClassifierEvent.errorOccured(errorMsg: $errorMsg)';
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
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) {
    return errorOccured(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) {
    return errorOccured?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
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
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) {
    return errorOccured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) {
    return errorOccured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured(this);
    }
    return orElse();
  }
}

abstract class _ErrorOccured implements ClassifierEvent {
  const factory _ErrorOccured({required String errorMsg}) = _$_ErrorOccured;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$ErrorOccuredCopyWith<_ErrorOccured> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeNewSignVisibilityCopyWith<$Res> {
  factory _$ChangeNewSignVisibilityCopyWith(_ChangeNewSignVisibility value,
          $Res Function(_ChangeNewSignVisibility) then) =
      __$ChangeNewSignVisibilityCopyWithImpl<$Res>;
  $Res call({bool visibility});
}

/// @nodoc
class __$ChangeNewSignVisibilityCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$ChangeNewSignVisibilityCopyWith<$Res> {
  __$ChangeNewSignVisibilityCopyWithImpl(_ChangeNewSignVisibility _value,
      $Res Function(_ChangeNewSignVisibility) _then)
      : super(_value, (v) => _then(v as _ChangeNewSignVisibility));

  @override
  _ChangeNewSignVisibility get _value =>
      super._value as _ChangeNewSignVisibility;

  @override
  $Res call({
    Object? visibility = freezed,
  }) {
    return _then(_ChangeNewSignVisibility(
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeNewSignVisibility implements _ChangeNewSignVisibility {
  const _$_ChangeNewSignVisibility({required this.visibility});

  @override
  final bool visibility;

  @override
  String toString() {
    return 'ClassifierEvent.changeNewSignVisibility(visibility: $visibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeNewSignVisibility &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visibility);

  @JsonKey(ignore: true)
  @override
  _$ChangeNewSignVisibilityCopyWith<_ChangeNewSignVisibility> get copyWith =>
      __$ChangeNewSignVisibilityCopyWithImpl<_ChangeNewSignVisibility>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) {
    return changeNewSignVisibility(visibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) {
    return changeNewSignVisibility?.call(visibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (changeNewSignVisibility != null) {
      return changeNewSignVisibility(visibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) {
    return changeNewSignVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) {
    return changeNewSignVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (changeNewSignVisibility != null) {
      return changeNewSignVisibility(this);
    }
    return orElse();
  }
}

abstract class _ChangeNewSignVisibility implements ClassifierEvent {
  const factory _ChangeNewSignVisibility({required bool visibility}) =
      _$_ChangeNewSignVisibility;

  bool get visibility;
  @JsonKey(ignore: true)
  _$ChangeNewSignVisibilityCopyWith<_ChangeNewSignVisibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LifecycleChangedCopyWith<$Res> {
  factory _$LifecycleChangedCopyWith(
          _LifecycleChanged value, $Res Function(_LifecycleChanged) then) =
      __$LifecycleChangedCopyWithImpl<$Res>;
  $Res call({CameraActivity cameraActivity});
}

/// @nodoc
class __$LifecycleChangedCopyWithImpl<$Res>
    extends _$ClassifierEventCopyWithImpl<$Res>
    implements _$LifecycleChangedCopyWith<$Res> {
  __$LifecycleChangedCopyWithImpl(
      _LifecycleChanged _value, $Res Function(_LifecycleChanged) _then)
      : super(_value, (v) => _then(v as _LifecycleChanged));

  @override
  _LifecycleChanged get _value => super._value as _LifecycleChanged;

  @override
  $Res call({
    Object? cameraActivity = freezed,
  }) {
    return _then(_LifecycleChanged(
      cameraActivity: cameraActivity == freezed
          ? _value.cameraActivity
          : cameraActivity // ignore: cast_nullable_to_non_nullable
              as CameraActivity,
    ));
  }
}

/// @nodoc

class _$_LifecycleChanged implements _LifecycleChanged {
  const _$_LifecycleChanged({required this.cameraActivity});

  @override
  final CameraActivity cameraActivity;

  @override
  String toString() {
    return 'ClassifierEvent.lifecycleChanged(cameraActivity: $cameraActivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LifecycleChanged &&
            (identical(other.cameraActivity, cameraActivity) ||
                other.cameraActivity == cameraActivity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraActivity);

  @JsonKey(ignore: true)
  @override
  _$LifecycleChangedCopyWith<_LifecycleChanged> get copyWith =>
      __$LifecycleChangedCopyWithImpl<_LifecycleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prepareClassification,
    required TResult Function() beginClassification,
    required TResult Function() endClassification,
    required TResult Function(List<ClassifierResult> classifierResults)
        classificationResults,
    required TResult Function(ClassifierResult character, String sentence)
        showNewSign,
    required TResult Function(String errorMsg) errorOccured,
    required TResult Function(bool visibility) changeNewSignVisibility,
    required TResult Function(CameraActivity cameraActivity) lifecycleChanged,
  }) {
    return lifecycleChanged(cameraActivity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
  }) {
    return lifecycleChanged?.call(cameraActivity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prepareClassification,
    TResult Function()? beginClassification,
    TResult Function()? endClassification,
    TResult Function(List<ClassifierResult> classifierResults)?
        classificationResults,
    TResult Function(ClassifierResult character, String sentence)? showNewSign,
    TResult Function(String errorMsg)? errorOccured,
    TResult Function(bool visibility)? changeNewSignVisibility,
    TResult Function(CameraActivity cameraActivity)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (lifecycleChanged != null) {
      return lifecycleChanged(cameraActivity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrepareClassification value)
        prepareClassification,
    required TResult Function(_BeginClassification value) beginClassification,
    required TResult Function(_EndClassification value) endClassification,
    required TResult Function(_ClassificationResults value)
        classificationResults,
    required TResult Function(_ShowNewSign value) showNewSign,
    required TResult Function(_ErrorOccured value) errorOccured,
    required TResult Function(_ChangeNewSignVisibility value)
        changeNewSignVisibility,
    required TResult Function(_LifecycleChanged value) lifecycleChanged,
  }) {
    return lifecycleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
  }) {
    return lifecycleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrepareClassification value)? prepareClassification,
    TResult Function(_BeginClassification value)? beginClassification,
    TResult Function(_EndClassification value)? endClassification,
    TResult Function(_ClassificationResults value)? classificationResults,
    TResult Function(_ShowNewSign value)? showNewSign,
    TResult Function(_ErrorOccured value)? errorOccured,
    TResult Function(_ChangeNewSignVisibility value)? changeNewSignVisibility,
    TResult Function(_LifecycleChanged value)? lifecycleChanged,
    required TResult orElse(),
  }) {
    if (lifecycleChanged != null) {
      return lifecycleChanged(this);
    }
    return orElse();
  }
}

abstract class _LifecycleChanged implements ClassifierEvent {
  const factory _LifecycleChanged({required CameraActivity cameraActivity}) =
      _$_LifecycleChanged;

  CameraActivity get cameraActivity;
  @JsonKey(ignore: true)
  _$LifecycleChangedCopyWith<_LifecycleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClassifierStateTearOff {
  const _$ClassifierStateTearOff();

  _Empty empty(
      {required List<ClassifierResult> classifierResultsNew,
      required List<ClassifierResult> classifierResultsAll,
      required ClassifierResult textClassifiedNew,
      required String textClassifiedAll,
      dynamic cameraController,
      required bool errorOccured,
      required bool showNewSign,
      required String errorMessage}) {
    return _Empty(
      classifierResultsNew: classifierResultsNew,
      classifierResultsAll: classifierResultsAll,
      textClassifiedNew: textClassifiedNew,
      textClassifiedAll: textClassifiedAll,
      cameraController: cameraController,
      errorOccured: errorOccured,
      showNewSign: showNewSign,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $ClassifierState = _$ClassifierStateTearOff();

/// @nodoc
mixin _$ClassifierState {
  List<ClassifierResult> get classifierResultsNew =>
      throw _privateConstructorUsedError;
  List<ClassifierResult> get classifierResultsAll =>
      throw _privateConstructorUsedError;
  ClassifierResult get textClassifiedNew => throw _privateConstructorUsedError;
  String get textClassifiedAll => throw _privateConstructorUsedError;
  dynamic get cameraController => throw _privateConstructorUsedError;
  bool get errorOccured => throw _privateConstructorUsedError;
  bool get showNewSign => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ClassifierResult> classifierResultsNew,
            List<ClassifierResult> classifierResultsAll,
            ClassifierResult textClassifiedNew,
            String textClassifiedAll,
            dynamic cameraController,
            bool errorOccured,
            bool showNewSign,
            String errorMessage)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<ClassifierResult> classifierResultsNew,
            List<ClassifierResult> classifierResultsAll,
            ClassifierResult textClassifiedNew,
            String textClassifiedAll,
            dynamic cameraController,
            bool errorOccured,
            bool showNewSign,
            String errorMessage)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ClassifierResult> classifierResultsNew,
            List<ClassifierResult> classifierResultsAll,
            ClassifierResult textClassifiedNew,
            String textClassifiedAll,
            dynamic cameraController,
            bool errorOccured,
            bool showNewSign,
            String errorMessage)?
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
  $ClassifierStateCopyWith<ClassifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassifierStateCopyWith<$Res> {
  factory $ClassifierStateCopyWith(
          ClassifierState value, $Res Function(ClassifierState) then) =
      _$ClassifierStateCopyWithImpl<$Res>;
  $Res call(
      {List<ClassifierResult> classifierResultsNew,
      List<ClassifierResult> classifierResultsAll,
      ClassifierResult textClassifiedNew,
      String textClassifiedAll,
      dynamic cameraController,
      bool errorOccured,
      bool showNewSign,
      String errorMessage});
}

/// @nodoc
class _$ClassifierStateCopyWithImpl<$Res>
    implements $ClassifierStateCopyWith<$Res> {
  _$ClassifierStateCopyWithImpl(this._value, this._then);

  final ClassifierState _value;
  // ignore: unused_field
  final $Res Function(ClassifierState) _then;

  @override
  $Res call({
    Object? classifierResultsNew = freezed,
    Object? classifierResultsAll = freezed,
    Object? textClassifiedNew = freezed,
    Object? textClassifiedAll = freezed,
    Object? cameraController = freezed,
    Object? errorOccured = freezed,
    Object? showNewSign = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      classifierResultsNew: classifierResultsNew == freezed
          ? _value.classifierResultsNew
          : classifierResultsNew // ignore: cast_nullable_to_non_nullable
              as List<ClassifierResult>,
      classifierResultsAll: classifierResultsAll == freezed
          ? _value.classifierResultsAll
          : classifierResultsAll // ignore: cast_nullable_to_non_nullable
              as List<ClassifierResult>,
      textClassifiedNew: textClassifiedNew == freezed
          ? _value.textClassifiedNew
          : textClassifiedNew // ignore: cast_nullable_to_non_nullable
              as ClassifierResult,
      textClassifiedAll: textClassifiedAll == freezed
          ? _value.textClassifiedAll
          : textClassifiedAll // ignore: cast_nullable_to_non_nullable
              as String,
      cameraController: cameraController == freezed
          ? _value.cameraController
          : cameraController // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorOccured: errorOccured == freezed
          ? _value.errorOccured
          : errorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      showNewSign: showNewSign == freezed
          ? _value.showNewSign
          : showNewSign // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> implements $ClassifierStateCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ClassifierResult> classifierResultsNew,
      List<ClassifierResult> classifierResultsAll,
      ClassifierResult textClassifiedNew,
      String textClassifiedAll,
      dynamic cameraController,
      bool errorOccured,
      bool showNewSign,
      String errorMessage});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$ClassifierStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? classifierResultsNew = freezed,
    Object? classifierResultsAll = freezed,
    Object? textClassifiedNew = freezed,
    Object? textClassifiedAll = freezed,
    Object? cameraController = freezed,
    Object? errorOccured = freezed,
    Object? showNewSign = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_Empty(
      classifierResultsNew: classifierResultsNew == freezed
          ? _value.classifierResultsNew
          : classifierResultsNew // ignore: cast_nullable_to_non_nullable
              as List<ClassifierResult>,
      classifierResultsAll: classifierResultsAll == freezed
          ? _value.classifierResultsAll
          : classifierResultsAll // ignore: cast_nullable_to_non_nullable
              as List<ClassifierResult>,
      textClassifiedNew: textClassifiedNew == freezed
          ? _value.textClassifiedNew
          : textClassifiedNew // ignore: cast_nullable_to_non_nullable
              as ClassifierResult,
      textClassifiedAll: textClassifiedAll == freezed
          ? _value.textClassifiedAll
          : textClassifiedAll // ignore: cast_nullable_to_non_nullable
              as String,
      cameraController: cameraController == freezed
          ? _value.cameraController
          : cameraController // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorOccured: errorOccured == freezed
          ? _value.errorOccured
          : errorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      showNewSign: showNewSign == freezed
          ? _value.showNewSign
          : showNewSign // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty(
      {required this.classifierResultsNew,
      required this.classifierResultsAll,
      required this.textClassifiedNew,
      required this.textClassifiedAll,
      this.cameraController,
      required this.errorOccured,
      required this.showNewSign,
      required this.errorMessage});

  @override
  final List<ClassifierResult> classifierResultsNew;
  @override
  final List<ClassifierResult> classifierResultsAll;
  @override
  final ClassifierResult textClassifiedNew;
  @override
  final String textClassifiedAll;
  @override
  final dynamic cameraController;
  @override
  final bool errorOccured;
  @override
  final bool showNewSign;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ClassifierState.empty(classifierResultsNew: $classifierResultsNew, classifierResultsAll: $classifierResultsAll, textClassifiedNew: $textClassifiedNew, textClassifiedAll: $textClassifiedAll, cameraController: $cameraController, errorOccured: $errorOccured, showNewSign: $showNewSign, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empty &&
            const DeepCollectionEquality()
                .equals(other.classifierResultsNew, classifierResultsNew) &&
            const DeepCollectionEquality()
                .equals(other.classifierResultsAll, classifierResultsAll) &&
            (identical(other.textClassifiedNew, textClassifiedNew) ||
                other.textClassifiedNew == textClassifiedNew) &&
            (identical(other.textClassifiedAll, textClassifiedAll) ||
                other.textClassifiedAll == textClassifiedAll) &&
            const DeepCollectionEquality()
                .equals(other.cameraController, cameraController) &&
            (identical(other.errorOccured, errorOccured) ||
                other.errorOccured == errorOccured) &&
            (identical(other.showNewSign, showNewSign) ||
                other.showNewSign == showNewSign) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(classifierResultsNew),
      const DeepCollectionEquality().hash(classifierResultsAll),
      textClassifiedNew,
      textClassifiedAll,
      const DeepCollectionEquality().hash(cameraController),
      errorOccured,
      showNewSign,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ClassifierResult> classifierResultsNew,
            List<ClassifierResult> classifierResultsAll,
            ClassifierResult textClassifiedNew,
            String textClassifiedAll,
            dynamic cameraController,
            bool errorOccured,
            bool showNewSign,
            String errorMessage)
        empty,
  }) {
    return empty(
        classifierResultsNew,
        classifierResultsAll,
        textClassifiedNew,
        textClassifiedAll,
        cameraController,
        errorOccured,
        showNewSign,
        errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<ClassifierResult> classifierResultsNew,
            List<ClassifierResult> classifierResultsAll,
            ClassifierResult textClassifiedNew,
            String textClassifiedAll,
            dynamic cameraController,
            bool errorOccured,
            bool showNewSign,
            String errorMessage)?
        empty,
  }) {
    return empty?.call(
        classifierResultsNew,
        classifierResultsAll,
        textClassifiedNew,
        textClassifiedAll,
        cameraController,
        errorOccured,
        showNewSign,
        errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ClassifierResult> classifierResultsNew,
            List<ClassifierResult> classifierResultsAll,
            ClassifierResult textClassifiedNew,
            String textClassifiedAll,
            dynamic cameraController,
            bool errorOccured,
            bool showNewSign,
            String errorMessage)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(
          classifierResultsNew,
          classifierResultsAll,
          textClassifiedNew,
          textClassifiedAll,
          cameraController,
          errorOccured,
          showNewSign,
          errorMessage);
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

abstract class _Empty implements ClassifierState {
  const factory _Empty(
      {required List<ClassifierResult> classifierResultsNew,
      required List<ClassifierResult> classifierResultsAll,
      required ClassifierResult textClassifiedNew,
      required String textClassifiedAll,
      dynamic cameraController,
      required bool errorOccured,
      required bool showNewSign,
      required String errorMessage}) = _$_Empty;

  @override
  List<ClassifierResult> get classifierResultsNew;
  @override
  List<ClassifierResult> get classifierResultsAll;
  @override
  ClassifierResult get textClassifiedNew;
  @override
  String get textClassifiedAll;
  @override
  dynamic get cameraController;
  @override
  bool get errorOccured;
  @override
  bool get showNewSign;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}
