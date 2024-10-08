import 'package:flutter/material.dart';
import 'common.dart';
import 'useful_date_range_picker_demo.dart' deferred as range_picker;
import 'useful_datatable_indicator_demo.dart' deferred as indicator;
import 'useful_image_editor_demo.dart' deferred as image_editor;
import 'useful_simple_color_picker_demo.dart' deferred as color_picker;
import 'useful_simple_datatable_demo.dart' deferred as datatable;
import 'useful_simple_group_picker_demo.dart' deferred as group_picker;
import 'useful_desktop_sidebar_demo.dart' deferred as desktop_sidebar;

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
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(Routers.pageColorPicker);
            },
            title: const Text("UsefulSimpleColorPickerDemo"),
            trailing: const Icon(Icons.navigation_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(Routers.pageSimpleDatatable);
            },
            title: const Text("UsefulSimpleDatatableDemo"),
            trailing: const Icon(Icons.navigation_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(Routers.pageGroupPicker);
            },
            title: const Text("UsefulSimpleGroupPickerDemo"),
            trailing: const Icon(Icons.navigation_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(Routers.pageSimpleSidebar);
            },
            title: const Text("UsefulSimpleSidebar"),
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
  static const String pageColorPicker = "/pageColorPicker";
  static const String pageSimpleDatatable = "/pageSimpleDatatable";
  static const String pageGroupPicker = "/pageGroupPicker";
  static const String pageSimpleSidebar = "/pageSimpleSidebar";

  static Map<String, WidgetBuilder> routers = {
    pageMain: (context) => const MyHomePage(),
    pageDatepicker: (context) => FutureLoaderWidget(
          builder: (context) => range_picker.UsefulDateRangePickerDemo(),
          loadWidgetFuture: range_picker.loadLibrary(),
        ),
    pageDatatableIndicator: (context) => FutureLoaderWidget(
        builder: (context) => indicator.UsefulDatatableIndicatorDemo(),
        loadWidgetFuture: indicator.loadLibrary()),
    pageEditor: (context) => FutureLoaderWidget(
        builder: ((context) => image_editor.UsefulImageEditorDemo()),
        loadWidgetFuture: image_editor.loadLibrary()),
    pageColorPicker: (context) => FutureLoaderWidget(
        builder: (context) => color_picker.UsefulSimpleColorPickerDemo(),
        loadWidgetFuture: color_picker.loadLibrary()),
    pageSimpleDatatable: (context) => FutureLoaderWidget(
        builder: (context) => datatable.UsefulSimpleDatatableDemo(),
        loadWidgetFuture: datatable.loadLibrary()),
    pageGroupPicker: (context) => FutureLoaderWidget(
        builder: (context) => group_picker.UsefulSimpleGroupPickerDemo(),
        loadWidgetFuture: group_picker.loadLibrary()),
    pageSimpleSidebar: (context) => FutureLoaderWidget(
        builder: (context) => desktop_sidebar.UsefulDesktopSidebarDemo(),
        loadWidgetFuture: desktop_sidebar.loadLibrary()),
  };
}
