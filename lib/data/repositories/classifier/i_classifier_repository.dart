import 'package:dartz/dartz.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';
import 'package:inzynierka/models/enum/camera_activity.dart';

abstract class IClassifierRepository {

  Future<void>manageAppLifecycle(CameraActivity cameraActivity);

  Future<void> beginClassification();

  Future<void> endClassification();

  Stream<Either<ClassifierFailure, List<ClassifierResult>>> get videoStream;

  ClassifierResult chooseCharacter(List<ClassifierResult> resultsAll);

  String showSentence(String character, String sentence);

  dynamic get cameraController;
}
