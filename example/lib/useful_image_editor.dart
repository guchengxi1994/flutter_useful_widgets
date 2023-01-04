import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/flutter_useful_widgets.dart';

class UsefulImageEditorDemo extends StatelessWidget {
  const UsefulImageEditorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const UsefulImageEditorBoard(
      imageData: AssetImage('assets/image/test.jpg'),
    );
  }
}
