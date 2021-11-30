import 'package:inzynierka/models/enum/camera_activity.dart';

abstract class ILifecycleService {
  Stream<CameraActivity> get cameraManagment;
  void closeCameraManagment();
}
