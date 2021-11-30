import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraWidget extends StatefulWidget {
  CameraWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final CameraController controller;

  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: height - 125,
      child: CameraPreview(widget.controller),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
