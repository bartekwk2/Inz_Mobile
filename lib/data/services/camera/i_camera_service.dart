import 'package:dartz/dartz.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/models/camera/image.dart';

abstract class ICameraService {
  Future<void> initializeCamera();

  Future<void> startFetchingVideo();

  Future<void> stopFetchingVideo();

  Stream<Either<ClassifierFailure, Image>> get videoStream;

  void closeVideoStream();

  dynamic get getCameraController;
}
