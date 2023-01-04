import 'package:flutter/material.dart';
import 'useful_date_range_picker_demo.dart';
import 'useful_datatable_indicator_demo.dart';
import 'useful_image_editor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: Routers.routers,
      initialRoute: Routers.pageMain,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(Routers.pageDatepicker);
            },
            title: const Text("UsefulDataRangePickerDemo"),
            trailing: const Icon(Icons.navigation_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(Routers.pageDatatableIndicator);
            },
            title: const Text("UsefulDatatableIndicatorDemo"),
            trailing: const Icon(Icons.navigation_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(Routers.pageEditor);
            },
            title: const Text("UsefulImageEditorDemo"),
            trailing: const Icon(Icons.navigation_rounded),
          ),
        ],
      ),
    );
  }
}

class Routers {
  static const String pageMain = "/pageMain";
  static const String pageDatepicker = "/pageDatepicker";
  static const String pageDatatableIndicator = "/pageDatatableIndicator";
  static const String pageEditor = "/pageEditor";

  static Map<String, WidgetBuilder> routers = {
    pageMain: (context) => const MyHomePage(),
    pageDatepicker: (context) => const UsefulDateRangePickerDemo(),
    pageDatatableIndicator: (context) => const UsefulDatatableIndicatorDemo(),
    pageEditor: (context) => const UsefulImageEditorDemo()
  };
}
