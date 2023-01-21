import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/flutter_useful_widgets.dart';

class UsefulSimpleGroupPickerDemo extends StatelessWidget {
  const UsefulSimpleGroupPickerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: UsefulGroupSelector(
          widgetWidth: 550,
        ),
      ),
    );
  }
}
