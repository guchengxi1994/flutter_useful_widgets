import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/flutter_useful_widgets.dart';

class UsefulSimpleDatatableDemo extends StatelessWidget {
  UsefulSimpleDatatableDemo({Key? key}) : super(key: key);

  final SimpleDataProvider provider = SimpleDataProvider(initial: () async {
    return await BaseDataProvider.mock();
  }, onFilter: (List<Object> conditions) async {
    return await BaseDataProvider.mock();
  }, onLoadMore: () async {
    return await BaseDataProvider.mock();
  }, onPageChanged: (int index) async {
    return await BaseDataProvider.mock();
  }, onReset: () async {
    return await BaseDataProvider.mock();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: UsefulSimpleDatatable(
        columns: const ["name", "age", "gender"],
        dataProvider: provider,
        pageCount: 15,
      ),
    );
  }
}
