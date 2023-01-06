import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/flutter_useful_widgets.dart';

class UsefulSimpleColorPickerDemo extends StatelessWidget {
  UsefulSimpleColorPickerDemo({Key? key}) : super(key: key);

  final ColorPickerController colorPickerController = ColorPickerController(
    onColorSelected: (selected) {
      debugPrint(selected.toString());
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: UsefulSimpleColorPicker(
        controller: colorPickerController,
        pickerHeight: 100,
      )),
    );
  }
}
