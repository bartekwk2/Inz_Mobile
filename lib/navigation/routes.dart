import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:inzynierka/bloc/photo_bloc/photo_bloc.dart';
import 'package:inzynierka/di/di_init.dart';
import 'package:inzynierka/bloc/classifier_bloc/classifier_bloc.dart';
import 'package:inzynierka/screens/detection/classifier_screen.dart';
import 'package:inzynierka/screens/home/views/home.dart';
import 'package:inzynierka/screens/photo/photo_screen.dart';

class RouteConst {
  RouteConst._();
  static const homeRoute = "/";
  static const classifierRoute = "/classifierRoute";
  static const photoRoute = "/photoRoute";
}

class Pages {
  static List<GetPage> pages = [
    GetPage(name: RouteConst.homeRoute, page: () => HomePage()),
    GetPage(
        name: RouteConst.classifierRoute,
        page: () => BlocProvider(
              create: (context) => getIt<ClassifierBloc>()
                ..add(ClassifierEvent.beginClassification()),
              child: ClassifierScreen(),
            )),
    GetPage(
        name: RouteConst.photoRoute,
        page: () => BlocProvider(
            create: (context) => getIt<PhotoBloc>(), child: PhotoPage()))
  ];
}
