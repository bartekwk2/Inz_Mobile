import 'package:flutter/material.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';

class ClassificationResultsWidget extends StatelessWidget {
  final List<ClassifierResult> classifierResult;

  ClassificationResultsWidget({required this.classifierResult});

  @override
  Widget build(BuildContext context) {
    if (classifierResult.length > 0) {
      return Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView.builder(
          itemCount: classifierResult.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 45),
              child: Container(
                height: 40,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      child: Text(
                        classifierResult[index].label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.transparent,
                        value: classifierResult[index].confidence,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 40,
                      child: Text(
                        (classifierResult[index].confidence * 100)
                                .toStringAsFixed(0) +
                            '%',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    } else {
      return Text('');
    }
  }
}
