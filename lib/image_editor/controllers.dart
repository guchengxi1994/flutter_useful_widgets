// ignore_for_file: avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/image_editor/rect.dart';

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
