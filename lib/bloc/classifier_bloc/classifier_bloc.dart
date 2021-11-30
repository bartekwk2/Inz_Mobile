import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inzynierka/data/repositories/classifier/i_classifier_repository.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';
import 'package:inzynierka/models/enum/camera_activity.dart';
import 'package:inzynierka/utills/durations.dart';

part 'classifier_bloc.freezed.dart';

part 'classifier_event.dart';

part 'classifier_state.dart';

@injectable
class ClassifierBloc extends Bloc<ClassifierEvent, ClassifierState> {
  final IClassifierRepository classifierRepository;
  StreamSubscription? _streamSubscription;

  ClassifierBloc({required this.classifierRepository})
      : super(ClassifierState.empty(
            classifierResultsAll: [],
            classifierResultsNew: [],
            textClassifiedAll: "",
            textClassifiedNew: ClassifierResult.empty(),
            errorMessage: "",
            showNewSign: false,
            errorOccured: false)) {
//
    _streamSubscription = classifierRepository.videoStream.listen((classifierResult) {
      classifierResult.fold(
        (l) => this.add(ClassifierEvent.errorOccured(errorMsg: l.classifierFailureMsg)),
        (r) => onResultsFetched(r),
      );
    });
  }

  @override
  Stream<ClassifierState> mapEventToState(ClassifierEvent event) async* {
    yield* event.map(
        beginClassification: (e) async* {
          await classifierRepository.beginClassification();
          dynamic cameraController = classifierRepository.cameraController;
          yield state.copyWith(cameraController: cameraController);
        },
        endClassification: (e) async* {
          await classifierRepository.endClassification();
        },
        classificationResults: (e) async* {
          yield state.copyWith(
            classifierResultsNew: e.classifierResults,
            classifierResultsAll: state.classifierResultsAll..addAll(e.classifierResults),
          );
        },
        prepareClassification: (e) async* {},
        errorOccured: (e) async* {
          yield state.copyWith(errorMessage: e.errorMsg, errorOccured: true);
        },
        showNewSign: (e) async* {
          yield state.copyWith(
            classifierResultsAll: [],
            showNewSign: true,
            textClassifiedNew: e.character,
            textClassifiedAll: e.sentence,
          );
        },
        changeNewSignVisibility: (e) async* {
          await Future.delayed(Duration(microseconds: Durations.showSign));
          yield state.copyWith(showNewSign: e.visibility);
        },
        lifecycleChanged: (e) async* {
          await classifierRepository.manageAppLifecycle(e.cameraActivity);
        });
  }

  void onResultsFetched(List<ClassifierResult> classifierResults) {
    List<ClassifierResult> classifierResultsAll = state.classifierResultsAll;

    if (classifierResultsAll.length > Durations.sampleWindowAnalyze) {
      ClassifierResult character = classifierRepository.chooseCharacter(classifierResultsAll);
      String sentence = classifierRepository.showSentence(character.label, state.textClassifiedAll);
      this.add(ClassifierEvent.showNewSign(character, sentence));
    }
    this.add(ClassifierEvent.classificationResults(classifierResults: classifierResults));
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
