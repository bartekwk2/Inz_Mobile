import 'package:freezed_annotation/freezed_annotation.dart';

part 'classifier_result.g.dart';

@JsonSerializable()
class ClassifierResult {
  final double confidence;
  final int index;
  final String label;

  ClassifierResult({required this.confidence, required this.index, required this.label});

  factory ClassifierResult.empty() {
    return ClassifierResult(confidence: 0.0, index: -1, label: "");
  }

  ClassifierResult copyWith({
    double? confidence,
    int? index,
    String? label,
  }) {
    return ClassifierResult(
      confidence: confidence ?? this.confidence,
      index: index ?? this.index,
      label: label ?? this.label,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ClassifierResult && other.confidence == confidence && other.index == index && other.label == label;
  }

  @override
  int get hashCode => confidence.hashCode ^ index.hashCode ^ label.hashCode;

  @override
  String toString() => 'ClassifierResult(confidence: $confidence, index: $index, label: $label)';

  Map<String, dynamic> toMap() {
    return {
      'confidence': confidence,
      'index': index,
      'label': label,
    };
  }

  factory ClassifierResult.fromJson(Map<String, dynamic> json) => _$ClassifierResultFromJson(json);

  Map<String, dynamic> toJson() => _$ClassifierResultToJson(this);
}
