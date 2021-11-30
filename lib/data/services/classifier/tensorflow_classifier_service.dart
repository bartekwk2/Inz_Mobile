import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/data/services/classifier/i_classifier_service.dart';
import 'package:inzynierka/models/camera/image.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';
import 'package:tflite/tflite.dart';

@Singleton(as: IClassifierService)
class TensorflowClassifierSerive implements IClassifierService {
  @override
  Future<Either<ClassifierFailure, List<ClassifierResult>>> classifyImage(Image image) async {
    try {
      var output = await Tflite.runModelOnFrame(
        bytesList: image.pixels,
        imageMean: 0,
        imageStd: 1,
        imageHeight: image.height,
        imageWidth: image.width,
      );
      if (output != null) {
        if (output.length > 0) {
          List<ClassifierResult> classifierResults = output
              .map((classified) => ClassifierResult(
                    confidence: classified["confidence"],
                    index: classified["index"],
                    label: classified["label"],
                  ))
              .toList();
          return right(classifierResults);
        } else {
          return left(ClassifierFailure(classifierFailureMsg: "Nie znaleziono znaku"));
        }
      } else {
        return left(ClassifierFailure(classifierFailureMsg: "Nie znaleziono znaku"));
      }
    } catch (e) {
      return left(ClassifierFailure(classifierFailureMsg: "Błąd podczas klasyfikacji"));
    }
  }

  @override
  Future<void> loadModel() async {
    try {
      await Tflite.loadModel(model: "assets/tf/mobilegestureClassifier.tflite", labels: "assets/tf/labels.txt");
    } catch (e) {
      throw ClassifierFailure(classifierFailureMsg: "Błąd podczas ładowania modelu klasyfikacji");
    }
  }

  @override
  Future<void> closeModel() async {
    await Tflite.close();
  }

// Uint8List resizeImage(Uint8List data) {
//   Uint8List resizedData = data;
//   IMG.Image img = IMG.decodeImage(data)!;
//   IMG.Image resized = IMG.copyResize(img, width: 64, height: 64);
//   resizedData = IMG.encodeJpg(resized);
//   return resizedData;
// }
}
