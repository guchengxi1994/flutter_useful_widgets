// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

typedef OnColorSelected = Function(Color selected);

class ColorPickerController {
  /// 预设的颜色，默认 BGR
  final List<Color> colors;
  late ValueNotifier<int> notifier;

  /// 初始的index
  final int index;

  /// 选择颜色时的回调
  final OnColorSelected? onColorSelected;

  Color get currentColor => colors[notifier.value];

  ColorPickerController(
      {this.colors = const [
        Color.fromARGB(255, 0, 0, 255),
        Color.fromARGB(255, 0, 255, 0),
        Color.fromARGB(255, 255, 0, 0),
        Color.fromARGB(255, 255, 255, 255),
        Color.fromARGB(255, 0, 0, 0),
      ],
      this.index = 0,
      this.onColorSelected})
      : assert(index >= 0 && index < colors.length) {
    notifier = ValueNotifier(index);
  }

  void dispose() {
    notifier.dispose();
  }
}

class UsefulSimpleColorPicker extends StatefulWidget {
  const UsefulSimpleColorPicker(
      {Key? key,
      required this.controller,
      this.pickerHeight = 250,
      this.borderColor = const Color.fromARGB(255, 0, 0, 0)})
      : super(key: key);
  final ColorPickerController controller;
  final double pickerHeight;
  final Color borderColor;

  @override
  State<UsefulSimpleColorPicker> createState() =>
      _UsefulSimpleColorPickerState();
}

class _UsefulSimpleColorPickerState extends State<UsefulSimpleColorPicker> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: widget.controller.notifier,
        builder: ((context, value, child) {
          final colors = widget.controller.colors;
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: widget.borderColor),
                borderRadius: BorderRadius.circular(5)),
            width: 210,
            height: widget.pickerHeight <= 100 ? 100 : widget.pickerHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("你选择了:"),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: colors[widget.controller.notifier.value],
                        ),
                        width: 30,
                        height: 30,
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: colors.mapIndexed((index, element) {
                      return InkWell(
                        onTap: () {
                          widget.controller.notifier.value = index;
                          if (widget.controller.onColorSelected != null) {
                            widget.controller.onColorSelected!(colors[index]);
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: colors[index]),
                          width: 30,
                          height: 30,
                        ),
                      );
                    }).toList(),
                  ),
                ))
              ],
            ),
          );
        }));
  }
}
