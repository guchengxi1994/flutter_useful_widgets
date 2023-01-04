// ignore_for_file: must_be_immutable, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers.dart';

const double pointSize = 5;

class RectDetails {
  double xmin;
  double xmax;
  double ymin;
  double ymax;

  RectDetails(
      {required this.xmax,
      required this.xmin,
      required this.ymax,
      required this.ymin});
}

class MyClipper extends CustomClipper<Rect> {
  final double top;
  final double left;
  final double width;
  final double height;

  MyClipper(
    this.top,
    this.left,
    this.width,
    this.height,
  );

  @override
  Rect getClip(Size size) => Rect.fromLTWH(left, top, width, height);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

class RectBox extends StatelessWidget {
  RectBox({Key? key, required this.imgData}) : super(key: key);
  late RectDetails? details = null;
  final ImageProvider imgData;

  @override
  Widget build(BuildContext context) {
    details = context.watch<ImageController>().baseDetails;

    if (details == null) {
      return const SizedBox();
    }

    return Positioned(
      left: details!.xmin,
      top: details!.ymin,
      child: GestureDetector(
        onPanUpdate: (details) {
          context.read<ImageController>().changeBndBoxPosition(details);
        },
        child: Container(
          height: details!.ymax - details!.ymin,
          width: details!.xmax - details!.xmin,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 0.5),
            // color: Colors.transparent,
          ),
          child: Stack(children: [
            ClipRect(
              clipper: MyClipper(details!.xmin, details!.ymin,
                  details!.xmax - details!.xmin, details!.ymax - details!.ymin),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imgData,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // DecoratedBox(
            //   decoration: BoxDecoration(color: Colors.red),
            //   child: ClipRect(
            //       clipper: MyClipper(
            //           details!.xmin,
            //           details!.ymin,
            //           details!.xmax - details!.xmin,
            //           details!.ymax - details!.ymin), //使用自定义的clipper
            //       child: Container(
            //         width: MediaQuery.of(context).size.width,
            //         height: MediaQuery.of(context).size.height,
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             image: imgData,
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            //       )),
            // ),
            // left top
            Positioned(
                left: 0,
                top: 0,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    context
                        .read<ImageController>()
                        .changeBndBoxByLeftTopPosition(details);
                  },
                  child: Container(
                      width: pointSize,
                      height: pointSize,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(150),
                        border: Border.all(color: Colors.red, width: 0.5),
                      )),
                )),
            // right top
            Positioned(
                right: 0,
                top: 0,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    context
                        .read<ImageController>()
                        .changeBndBoxByRightTopPosition(details);
                  },
                  child: Container(
                      width: pointSize,
                      height: pointSize,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(150),
                        border: Border.all(color: Colors.red, width: 0.5),
                      )),
                )),
            // left bottom
            Positioned(
                left: 0,
                bottom: 0,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    context
                        .read<ImageController>()
                        .changeBndBoxByLeftBottomPosition(details);
                  },
                  child: Container(
                      width: pointSize,
                      height: pointSize,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(150),
                        border: Border.all(color: Colors.red, width: 0.5),
                      )),
                )),
            // right bottom
            Positioned(
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    context
                        .read<ImageController>()
                        .changeBndBoxByRightBottomPosition(details);
                  },
                  child: Container(
                      width: pointSize,
                      height: pointSize,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(150),
                        border: Border.all(color: Colors.red, width: 0.5),
                      )),
                )),
          ]),
        ),
      ),
    );
  }
}
