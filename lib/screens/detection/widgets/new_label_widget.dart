import 'package:flutter/material.dart';
import 'package:inzynierka/models/classification/classifier_result.dart';

class NewLabelWidget extends StatelessWidget {
  final ClassifierResult result;
  final bool showLabel;

  const NewLabelWidget({
    Key? key,
    required this.result,
    required this.showLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (showLabel) {
      return Positioned(
          top: 220,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: 150,
              height: 110,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
              child: Center(
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Nowy znak",
                          style: TextStyle(fontSize: 15),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          result.label,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ));
    } else {
      return SizedBox();
    }
  }
}
