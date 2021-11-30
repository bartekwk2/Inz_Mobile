import 'package:injectable/injectable.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:inzynierka/data/repositories/photo/i_photo_repository.dart';
import 'package:inzynierka/data/services/server/i_classifier_server_service.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';

@Singleton(as: IPhotoRepository)
class PhotoRepository implements IPhotoRepository {
  final IClassifierServerService classifierServerService;

  PhotoRepository({required this.classifierServerService});

  @override
  Future<Either<ClassifierFailure, List<ClassifierResult>>> classifyImage(
      File file) {
    return classifierServerService.classifyImage(file: file);
  }
}
