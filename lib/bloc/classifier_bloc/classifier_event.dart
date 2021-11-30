part of 'classifier_bloc.dart';

@freezed
abstract class ClassifierEvent with _$ClassifierEvent {
  const factory ClassifierEvent.prepareClassification() = _PrepareClassification;

  const factory ClassifierEvent.beginClassification() = _BeginClassification;

  const factory ClassifierEvent.endClassification() = _EndClassification;

  const factory ClassifierEvent.classificationResults({required List<ClassifierResult> classifierResults}) = _ClassificationResults;

  const factory ClassifierEvent.showNewSign(ClassifierResult character, String sentence) = _ShowNewSign;

  const factory ClassifierEvent.errorOccured({required String errorMsg}) = _ErrorOccured;

  const factory ClassifierEvent.changeNewSignVisibility({required bool visibility}) = _ChangeNewSignVisibility;

  const factory ClassifierEvent.lifecycleChanged({required CameraActivity cameraActivity}) = _LifecycleChanged;
}
