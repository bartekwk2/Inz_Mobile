import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';

abstract class IPhotoRepository {
  Future<Either<ClassifierFailure, List<ClassifierResult>>> classifyImage(
      File file);
}
