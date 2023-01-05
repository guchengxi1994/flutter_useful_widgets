import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_useful_widgets/flutter_useful_widgets.dart';

class UsefulImageEditorDemo extends StatefulWidget {
  const UsefulImageEditorDemo({Key? key}) : super(key: key);

  @override
  State<UsefulImageEditorDemo> createState() => _UsefulImageEditorDemoState();
}

class _UsefulImageEditorDemoState extends State<UsefulImageEditorDemo> {
  // ignore: prefer_typing_uninitialized_variables
  late Future<Uint8List> loadImage;

  @override
  void initState() {
    super.initState();
    loadImage = _loadImage();
  }

  Future<Uint8List> _loadImage() async {
    final ByteData bytes = await rootBundle.load('assets/image/test.jpg');
    final Uint8List list = bytes.buffer.asUint8List();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List>(
        future: loadImage,
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return UsefulImageEditorBoard(
              imageData: snapshot.data!,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }));
  }
}
