import 'dart:isolate';

import 'package:dartz/dartz.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/models/camera/image.dart';

class ClassifierWraper {
  final SendPort sendPort;
  final Either<ClassifierFailure, Image> image;

  ClassifierWraper({required this.sendPort, required this.image});
}
