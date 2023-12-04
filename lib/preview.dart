import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePreview extends StatefulWidget {
  final Uint8List image;
  const ImagePreview({super.key, required this.image});

  @override
  State<ImagePreview> createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  @override
  Widget build(BuildContext context) {
    print(widget.image);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Image.memory(widget.image, width: ScreenUtil().screenWidth),
      ),
    );
  }
}
