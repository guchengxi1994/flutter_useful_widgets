import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/flutter_useful_widgets.dart';

class UsefulDatatableIndicatorDemo extends StatelessWidget {
  const UsefulDatatableIndicatorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: UsefulDatatableIndicator(
        pageLength: 20,
        whenIndexChanged: (int index) {
          debugPrint(index.toString());
        },
      )),
    );
  }
}
