import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/data/services/camera/i_camera_service.dart';
import 'package:inzynierka/models/camera/image.dart';
import 'package:rxdart/rxdart.dart';

@Singleton(as: ICameraService)
class CameraService implements ICameraService {
  final BehaviorSubject<Either<ClassifierFailure, Image>> _videoStreamController = BehaviorSubject<Either<ClassifierFailure, Image>>();

  CameraController? cameraController;

  @override
  Stream<Either<ClassifierFailure, Image>> get videoStream => _videoStreamController.stream;

  @override
  get getCameraController => cameraController;

  @override
  Future<void> initializeCamera() async {
    try {
      List<CameraDescription> cameras = await availableCameras();
      if (cameraController != null) {
        await cameraController?.dispose();
      }
      cameraController = CameraController(cameras[0], ResolutionPreset.low, enableAudio: false);
      await cameraController?.initialize();
    } on CameraException catch (_) {
      _videoStreamController.add(left(ClassifierFailure(classifierFailureMsg: "Błąd podczas inicjalizacji kamery")));
    }
  }

  @override
  Future<void> startFetchingVideo() async {
    try {
      if (cameraController == null) {
        await initializeCamera();
      }
      await cameraController?.startImageStream((image) async {
        _videoStreamController.add(right(_mapCameraImageToImage(image)));
      });
    } on CameraException catch (_) {
      _videoStreamController.add(left(ClassifierFailure(classifierFailureMsg: "Błąd podczas outwards obrazu")));
    }
  }

  @override
  Future<void> stopFetchingVideo() async {
    try {
      await cameraController?.stopImageStream();
    } on CameraException catch (_) {
      _videoStreamController.add(left(ClassifierFailure(classifierFailureMsg: "Błąd podczas zatrzymania odtwarzania")));
    }
  }

  @override
  void closeVideoStream() {
    cameraController?.dispose();
  }

  Image _mapCameraImageToImage(CameraImage cameraImage) {
    List<int> strides = Int32List(cameraImage.planes.length * 2);
    int index = 0;
    List<Uint8List> data = cameraImage.planes.map((plane) {
      strides[index] = (plane.bytesPerRow);
      index++;
      strides[index] = (plane.bytesPerPixel!);
      index++;
      return plane.bytes;
    }).toList();

    return Image(
      width: cameraImage.width,
      height: cameraImage.height,
      strides: strides,
      pixels: data,
    );
  }
}
