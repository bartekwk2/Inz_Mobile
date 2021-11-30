part of 'photo_bloc.dart';

@freezed
abstract class PhotoEvent with _$PhotoEvent {
  const factory PhotoEvent.uploadPhoto({required File photo}) = _UploadPhoto;

  const factory PhotoEvent.errorOccured({required String errorMsg}) = _ErrorOccured;
}
