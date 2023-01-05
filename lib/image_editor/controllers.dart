// ignore_for_file: avoid_init_to_null

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/image_editor/rect.dart';
import 'dart:ui' as ui;

enum EditorStatus { generateRegion, generateDone, operation }

class EditorController extends ChangeNotifier {
  List<Widget> boardWidgets = [];
  EditorStatus status = EditorStatus.generateRegion;
  Color initialColor = Colors.transparent;
  Color doneColor = Colors.black54.withOpacity(0.5);

  Color get currentColor =>
      status == EditorStatus.generateRegion ? initialColor : doneColor;

  changeStatus(EditorStatus s) {
    status = s;
    notifyListeners();
  }

  addWidget(Widget w) {
    boardWidgets.add(w);
    notifyListeners();
  }

  removeWidget(Widget w) {
    boardWidgets.remove(w);
    notifyListeners();
  }
}

class ImageController extends ChangeNotifier {
  double bndboxPreviewWidth = 0;
  double bndboxPreviewHeight = 0;
  final Uint8List imgData;

  ImageController({required this.imgData});

  /// for test
  Future<ui.Image> getImage() async {
    ui.Image image = await bytesToImage(imgData);
    return image;
  }

  /// Tested OK
  ///
  /// returns a `CustomPainter`
  ///
  /// works on web
  Future<CustomPainter> getImgWidget(
      double windowWidth, double windowHeight) async {
    ui.Image image = await bytesToImage(imgData);

    return ImageClipper(
        image,
        Rect.fromLTWH(
            baseDetails!.xmin,
            baseDetails!.ymin,
            baseDetails!.xmax - baseDetails!.xmin,
            baseDetails!.ymax - baseDetails!.ymin),
        Size(windowWidth, windowHeight),
        Size(image.width * 1.0, image.height * 1.0));
  }

  /// Tested OK
  ///
  /// returns `ByteData`
  ///
  /// not work on `web`(3.3.10)
  Future<ByteData?> capture(double windowWidth, double windowHeight) async {
    ui.Image image = await bytesToImage(imgData);

    final originImageSize = Size(image.width * 1.0, image.height * 1.0);
    Size paintSize = Size(windowWidth, windowHeight);

    final clipperRect = Rect.fromLTWH(
        baseDetails!.xmin,
        baseDetails!.ymin,
        baseDetails!.xmax - baseDetails!.xmin,
        baseDetails!.ymax - baseDetails!.ymin);

    final recorder = ui.PictureRecorder();

    final width = originImageSize.width / paintSize.width * clipperRect.width;
    final height =
        originImageSize.height / paintSize.height * clipperRect.height;
    final left = originImageSize.width / paintSize.width * clipperRect.left;
    final top = originImageSize.height / paintSize.height * clipperRect.top;

    final canvas = Canvas(recorder);

    Paint paint = Paint();
    paint.isAntiAlias = true;
    canvas.drawImageRect(image, Rect.fromLTWH(left, top, width, height),
        Rect.fromLTWH(0, 0, clipperRect.width, clipperRect.height), paint);

    final picture = recorder.endRecording();

    ui.Image img = await picture.toImage(
        clipperRect.width.ceil(), clipperRect.height.ceil());

    final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);
    return pngBytes;
  }

  late RectDetails? baseDetails = null;

  changeBndBoxPosition(DragUpdateDetails d) {
    if (baseDetails == null) {
      return;
    }

    baseDetails!.xmin += d.delta.dx;
    baseDetails!.ymin += d.delta.dy;
    baseDetails!.xmax += d.delta.dx;
    baseDetails!.ymax += d.delta.dy;

    if (baseDetails!.xmin < 0) {
      baseDetails!.xmin = 0;
    }

    if (baseDetails!.ymin < 0) {
      baseDetails!.ymin = 0;
    }
    notifyListeners();
  }

  changeBndBoxByRightBottomPosition(DragUpdateDetails d) {
    baseDetails!.xmax += d.delta.dx;
    baseDetails!.ymax += d.delta.dy;
    notifyListeners();
  }

  changeBndBoxByLeftTopPosition(DragUpdateDetails d) {
    baseDetails!.xmin += d.delta.dx;
    baseDetails!.ymin += d.delta.dy;

    if (baseDetails!.xmin < 0) {
      baseDetails!.xmin = 0;
    }

    if (baseDetails!.ymin < 0) {
      baseDetails!.ymin = 0;
    }
    notifyListeners();
  }

  changeBndBoxByRightTopPosition(DragUpdateDetails d) {
    baseDetails!.xmax += d.delta.dx;
    baseDetails!.ymin += d.delta.dy;

    if (baseDetails!.ymin < 0) {
      baseDetails!.ymin = 0;
    }
    notifyListeners();
  }

  changeBndBoxByLeftBottomPosition(DragUpdateDetails d) {
    baseDetails!.xmin += d.delta.dx;
    baseDetails!.ymax += d.delta.dy;

    if (baseDetails!.xmin < 0) {
      baseDetails!.xmin = 0;
    }
    notifyListeners();
  }

  changeBaseDetails(RectDetails rectDetails) {
    baseDetails = rectDetails;
    notifyListeners();
  }

  changeBndboxPreviewWidth(double w) {
    if (w > 0) {
      bndboxPreviewWidth = w;
      notifyListeners();
    }
  }

  changeBndboxPreviewHeight(double h) {
    if (h > 0) {
      bndboxPreviewHeight = h;
      notifyListeners();
    }
  }

  bndReset() {
    bndboxPreviewHeight = 0;
    bndboxPreviewWidth = 0;
    notifyListeners();
  }
}

Future<ui.Image> bytesToImage(Uint8List imgBytes) async {
  ui.Codec codec = await ui.instantiateImageCodec(imgBytes);
  ui.FrameInfo frame = await codec.getNextFrame();
  return frame.image;
}

class ImageClipper extends CustomPainter {
  final ui.Image image;
  final Rect clipperRect;
  final Size paintSize;
  final Size originImageSize;

  ImageClipper(
      this.image, this.clipperRect, this.paintSize, this.originImageSize);

  @override
  void paint(Canvas canvas, Size size) {
    final width = originImageSize.width / paintSize.width * clipperRect.width;
    final height =
        originImageSize.height / paintSize.height * clipperRect.height;
    final left = originImageSize.width / paintSize.width * clipperRect.left;
    final top = originImageSize.height / paintSize.height * clipperRect.top;

    Paint paint = Paint();
    paint.isAntiAlias = true;
    canvas.drawImageRect(image, Rect.fromLTWH(left, top, width, height),
        Rect.fromLTWH(0, 0, clipperRect.width, clipperRect.height), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
