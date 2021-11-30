import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:inzynierka/navigation/routes.dart';
import 'package:inzynierka/screens/detection/widgets/camera_widget.dart';
import 'package:inzynierka/screens/detection/widgets/classification_results.dart';
import 'package:inzynierka/utills/durations.dart';

import '../../bloc/classifier_bloc/classifier_bloc.dart';
import 'widgets/all_sentence_widget.dart';
import 'widgets/new_label_widget.dart';

class ClassifierScreen extends StatefulWidget {
  @override
  _ClassifierScreenState createState() => _ClassifierScreenState();
}

class _ClassifierScreenState extends State<ClassifierScreen> {
  BuildContext? buildContext;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Get.back();
        Get.off(RouteConst.homeRoute);
        return Future.value(true);
      },
      child: Material(
        child: BlocConsumer<ClassifierBloc, ClassifierState>(listener: (context, state) async {
          if (state.showNewSign) {
            Future.delayed(Duration(milliseconds: Durations.showSign), () {
              context.read<ClassifierBloc>().add(ClassifierEvent.changeNewSignVisibility(visibility: false));
            });
          }
        }, builder: (context, classifierBloc) {
          buildContext = context;
          if (classifierBloc.cameraController != null) {
            return Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CameraWidget(controller: classifierBloc.cameraController as CameraController),
                ),
                ClassificationResultsWidget(
                  classifierResult: classifierBloc.classifierResultsNew,
                ),
                NewLabelWidget(result: classifierBloc.textClassifiedNew, showLabel: classifierBloc.showNewSign),
                AllSentenceWidget(sentence: classifierBloc.textClassifiedAll)
              ],
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}
