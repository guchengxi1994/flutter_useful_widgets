import 'package:flutter/material.dart';

/// 工具栏
class UsefulImageEditor extends StatelessWidget {
  const UsefulImageEditor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
    );
  }
}
