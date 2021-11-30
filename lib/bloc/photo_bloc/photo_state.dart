part of 'photo_bloc.dart';

@freezed
abstract class PhotoState with _$PhotoState {
  const factory PhotoState.empty({
    required List<ClassifierResult> classifierResultsNew,
    File? photo,
    required bool errorOccured,
  }) = _Empty;
}
