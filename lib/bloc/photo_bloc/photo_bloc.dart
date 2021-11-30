import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/data/repositories/photo/i_photo_repository.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';

part 'photo_bloc.freezed.dart';

part 'photo_event.dart';

part 'photo_state.dart';

@injectable
class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final IPhotoRepository photoRepository;

  PhotoBloc({required this.photoRepository})
      : super(PhotoState.empty(
          classifierResultsNew: [],
          errorOccured: false,
        ));

  @override
  Stream<PhotoState> mapEventToState(PhotoEvent event) async* {
    yield* event.map(
      uploadPhoto: (e) async* {
        Either<ClassifierFailure, List<ClassifierResult>> classificationResult = await photoRepository.classifyImage(e.photo);
        yield* classificationResult.fold((l) async* {
          yield state.copyWith(errorOccured: true);
        }, (r) async* {
          yield state.copyWith(errorOccured: false, classifierResultsNew: r, photo: e.photo);
        });
      },
      errorOccured: (e) async* {
        yield state.copyWith(errorOccured: true);
      },
    );
  }
}
