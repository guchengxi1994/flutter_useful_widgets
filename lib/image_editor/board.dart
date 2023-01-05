import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/image_editor/rect.dart';
import 'package:provider/provider.dart';

import 'controllers.dart';
import 'image_editor.dart';

class UsefulImageEditorBoard extends StatelessWidget {
  const UsefulImageEditorBoard({
    Key? key,
    required this.imageData,
  }) : super(key: key);
  final Uint8List imageData;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => EditorController()
              ..addWidget(const ImageView())
              ..addWidget(RectBox())),
        ChangeNotifierProvider(
            create: (_) => ImageController(imgData: imageData))
      ],
      builder: (ctx, child) {
        final details = ctx.watch<ImageController>().baseDetails;
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: MemoryImage(imageData), fit: BoxFit.fill)),
          child: Stack(
            children: [
              Container(
                color: ctx.watch<EditorController>().currentColor,
              ),
              if (details != null)
                ClipRect(
                    clipper: MyClipper(
                        details.ymin,
                        details.xmin,
                        details.xmax - details.xmin,
                        details.ymax - details.ymin), //使用自定义的clipper
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: MemoryImage(imageData),
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
              ...ctx.watch<EditorController>().boardWidgets
            ],
          ),
        );
      },
    );
  }
}

/// modified from `simple-tools-for-machine-learning\mltools_viewer\lib\screens\image_labeling\components\image_view.dart`
class ImageView extends StatefulWidget {
  const ImageView({Key? key}) : super(key: key);

  @override
  State<ImageView> createState() => ImageViewState();
}

class ImageViewState extends State<ImageView> {
  late double _initialLeft;
  late double _initialTop;
  late double _left;
  late double _top;
  late BndBoxPreviewWidget bndBoxPreviewWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (details) {
        if (context.read<EditorController>().status !=
            EditorStatus.generateRegion) {
          return;
        }

        debugPrint("[down details]:$details");
        _left = details.localPosition.dx;
        _top = details.localPosition.dy;
        _initialLeft = _left;
        _initialTop = _top;
        bndBoxPreviewWidget = BndBoxPreviewWidget(
          left: _left,
          top: _top,
        );
        context.read<EditorController>().addWidget(bndBoxPreviewWidget);
      },
      onPanUpdate: (details) {
        if (context.read<EditorController>().status !=
            EditorStatus.generateRegion) {
          return;
        }
        _left += details.delta.dx;
        _top += details.delta.dy;
        if (_top - _initialTop <= 0 || _left - _initialLeft <= 0) {
          return;
        }
        context
            .read<ImageController>()
            .changeBndboxPreviewHeight(_top - _initialTop);
        context
            .read<ImageController>()
            .changeBndboxPreviewWidth(_left - _initialLeft);
      },
      onPanEnd: (details) {
        if (context.read<EditorController>().status !=
            EditorStatus.generateRegion) {
          return;
        }
        double rectWidth = _left - _initialLeft;
        double rectHeight = _top - _initialTop;
        if (rectWidth <= 0 || rectHeight <= 0) {
          context.read<EditorController>().removeWidget(bndBoxPreviewWidget);
          return;
        }
        context.read<EditorController>().removeWidget(bndBoxPreviewWidget);
        context.read<ImageController>().bndReset();
        context.read<ImageController>().changeBaseDetails(RectDetails(
            xmax: _left, xmin: _initialLeft, ymax: _top, ymin: _initialTop));
        context
            .read<EditorController>()
            .changeStatus(EditorStatus.generateDone);
        context.read<EditorController>().addWidget(const NavigatorWidget());
      },
    );
  }
}

class BndBoxPreviewWidget extends StatelessWidget {
  const BndBoxPreviewWidget({Key? key, required this.left, required this.top})
      : super(key: key);
  final double left;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: left,
        top: top,
        child: Opacity(
          opacity: 0.7,
          child: Container(
            color: Colors.blueAccent,
            // width: context.watch<ImageController>().bndboxPreviewWidth,
            width: context.select<ImageController, double>(
                (value) => value.bndboxPreviewWidth),
            height: context.select<ImageController, double>(
                (value) => value.bndboxPreviewHeight),
          ),
        ));
  }
}
