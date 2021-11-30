import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:inzynierka/data/failures/failure/classifier_failure.dart';
import 'package:inzynierka/data/services/server/i_classifier_server_service.dart';
import 'package:inzynierka/models/camera/image.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';

@Singleton(as: IClassifierServerService)
class ClassifierServer implements IClassifierServerService {
  final MethodChannel platform = const MethodChannel('bartek.wk.yuv_transform/yuv');
  final String endPoint = 'http://192.168.0.106:3000/classifyImage';

  @override
  Future<Either<ClassifierFailure, List<ClassifierResult>>> classifyImage({Image? image, File? file}) async {
    final client = http.Client();
    try {
      Uint8List convImage = image != null ? await yuvTransform(image) : file!.readAsBytesSync();
      final request = http.Request('POST', Uri.parse(endPoint));
      request.bodyBytes = convImage;
      final response = await client.send(request);
      String responseString = await response.stream.bytesToString();
      Map<String, dynamic> decodedResponse = json.decode(responseString);
      if (response.statusCode == 200) {
        List<ClassifierResult> classifierResults = [];
        json.decode(decodedResponse["result"]).forEach((val) {
          ClassifierResult result = ClassifierResult.fromJson(val);
          classifierResults.add(result);
        });
        return right(classifierResults);
      } else {
        return left(ClassifierFailure(classifierFailureMsg: decodedResponse["errorMsg"]));
      }
    } catch (e) {
      return left(ClassifierFailure(classifierFailureMsg: "Wystąpił błąd podczas klasyfikacji"));
    } finally {
      client.close();
    }
  }

  Future<Uint8List> yuvTransform(Image image) async {
    Uint8List imageJpeg = await platform.invokeMethod('yuv_transform', {
      'platforms': image.pixels,
      'height': image.height,
      'width': image.width,
      'strides': image.strides,
    });

    return imageJpeg;
  }
}
