import 'dart:typed_data';

class Image {
  final int height;
  final int width;
  final List<Uint8List> pixels;
  final Uint8List? pixelsRGB;
  final List<int> strides;

  Image({
    required this.height,
    required this.width,
    required this.pixels,
    this.pixelsRGB,
    required this.strides,
  });
}
