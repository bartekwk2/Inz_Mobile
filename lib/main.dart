import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'data/repositories/classifier/i_classifier_repository.dart';
import 'di/di_init.dart';
import 'models/enum/camera_activity.dart';
import 'navigation/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      getIt.get<IClassifierRepository>().manageAppLifecycle(CameraActivity.cameraDisable);
    } else if (state == AppLifecycleState.resumed) {
      getIt.get<IClassifierRepository>().manageAppLifecycle(CameraActivity.cameraAble);
    } else {
      getIt.get<IClassifierRepository>().manageAppLifecycle(CameraActivity.other);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorObservers: [RouteObserver<PageRoute>()],
      theme: ThemeData(fontFamily: "Nunito"),
      debugShowCheckedModeBanner: false,
      getPages: Pages.pages,
    );
  }
}
