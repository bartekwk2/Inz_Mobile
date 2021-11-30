import 'package:inzynierka/data/failures/failure/i_failure.dart';

class ClassifierFailure implements Failure {
  final String classifierFailureMsg;

  ClassifierFailure({required this.classifierFailureMsg});
  @override
  String get message => classifierFailureMsg;
}
