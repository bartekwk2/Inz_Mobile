part of 'classifier_bloc.dart';

@freezed
abstract class ClassifierState with _$ClassifierState {
  const factory ClassifierState.empty(
      {required List<ClassifierResult> classifierResultsNew,
      required List<ClassifierResult> classifierResultsAll,
      required ClassifierResult textClassifiedNew,
      required String textClassifiedAll,
          dynamic cameraController,
      required bool errorOccured,
      required bool showNewSign,
      required String errorMessage}) = _Empty;
}
