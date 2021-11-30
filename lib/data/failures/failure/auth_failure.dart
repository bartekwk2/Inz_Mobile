import 'package:inzynierka/data/failures/failure/i_failure.dart';

class AuthFailure implements Failure {
  final String authFailureMsg;

  AuthFailure({required this.authFailureMsg});
  @override
  String get message => authFailureMsg;
}
