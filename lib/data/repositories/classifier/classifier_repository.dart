import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/data/repositories/classifier/i_classifier_repository.dart';
import 'package:inzynierka/data/services/camera/i_camera_service.dart';
import 'package:inzynierka/data/services/classifier/i_classifier_service.dart';
import 'package:inzynierka/data/services/lifecycle/i_lifecycle_service.dart';
import 'package:inzynierka/data/services/permission/i_permission_service.dart';
import 'package:inzynierka/data/services/server/i_classifier_server_service.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';
import 'package:inzynierka/models/enum/camera_activity.dart';
import 'package:inzynierka/utills/durations.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:supercharged/supercharged.dart';

@Singleton(as: IClassifierRepository)
class ClassifierRepository implements IClassifierRepository {
  final ICameraService cameraService;
  final IClassifierService classifierService;
  final IClassifierServerService classifierServerService;
  final ILifecycleService lifecycleService;
  final IPermissionService permissionService;

  @override
  Stream<Either<ClassifierFailure, List<ClassifierResult>>> get videoStream => cameraService.videoStream
      .throttleTime(Duration(milliseconds: Durations.throttleTimeFetch))
      .asyncMap((image) => image.fold((l) => left(l), (r) => classifierServerService.classifyImage(image: r)));

  @override
  get cameraController => cameraService.getCameraController;

  ClassifierRepository(
      {required this.cameraService,
      required this.classifierService,
      required this.lifecycleService,
      required this.classifierServerService,
      required this.permissionService}) {
    cameraService.initializeCamera();
  }

  @override
  Future<void> manageAppLifecycle(CameraActivity cameraActivity) async {
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }
    if (cameraActivity == CameraActivity.cameraDisable) {
      cameraService.closeVideoStream();
    } else if (cameraActivity == CameraActivity.cameraAble) {
      await cameraService.initializeCamera();
    }
  }

  @override
  Future<Either<ClassifierFailure, Unit>> beginClassification() async {
    PermissionStatus cameraPermission = await permissionService.cameraPermission();
    PermissionStatus microphonePermission = await permissionService.microphonePermission();

    if ((cameraPermission.isGranted || cameraPermission.isLimited) && (microphonePermission.isGranted || microphonePermission.isLimited)) {
      await classifierService.loadModel();
      await cameraService.startFetchingVideo();
      return right(unit);
    } else {
      return left(ClassifierFailure(classifierFailureMsg: "Nie zezwolono na dostęp do kamery/mikrofonu"));
    }
  }

  @override
  ClassifierResult chooseCharacter(List<ClassifierResult> resultsAll) {
    var groupedResults = resultsAll.groupBy<String, ClassifierResult>((result) => result.label);

    ClassifierResult biggestConfidenceResult = ClassifierResult.empty();

    groupedResults.forEach((label, groupedList) {
      double confidenceGroup = 0.0;
      groupedList.forEach((result) {
        confidenceGroup += result.confidence;
      });
      double avgConfidenceGroup = confidenceGroup / groupedList.length;
      if (avgConfidenceGroup > biggestConfidenceResult.confidence) {
        biggestConfidenceResult = ClassifierResult(confidence: avgConfidenceGroup, label: label, index: groupedList[0].index);
      }
    });
    return biggestConfidenceResult;
  }

  @override
  String showSentence(String character, String sentence) {
    String newSentence = sentence;
    switch (character) {
      case "del":
        newSentence = sentence.substring(0, sentence.length - 1);
        break;
      case "nic":
        break;
      case "space":
        newSentence += " ";
        break;
      default:
        newSentence += character;
        break;
    }
    return newSentence;
  }

  @override
  Future<void> endClassification() async {
    cameraService.closeVideoStream();
  }
}
