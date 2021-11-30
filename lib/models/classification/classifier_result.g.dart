// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classifier_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassifierResult _$ClassifierResultFromJson(Map<String, dynamic> json) =>
    ClassifierResult(
      confidence: (json['confidence'] as num).toDouble(),
      index: json['index'] as int,
      label: json['label'] as String,
    );

Map<String, dynamic> _$ClassifierResultToJson(ClassifierResult instance) =>
    <String, dynamic>{
      'confidence': instance.confidence,
      'index': instance.index,
      'label': instance.label,
    };
