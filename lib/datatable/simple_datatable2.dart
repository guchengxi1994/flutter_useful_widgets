// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/indicators/indicators.dart';
import 'package:collection/collection.dart';

import 'data_provider.dart';

/// dont need to provide pageCount
class UsefulSimpleDatatable2 extends StatefulWidget {
  const UsefulSimpleDatatable2({
    Key? key,
    required this.columns,
    this.centerItem = false,
    this.loading,
    this.ifEmpty,
    this.columnWidth = const [],
    required this.dataProvider,
  })  : assert(columnWidth.length == 0 || columnWidth.length == columns.length),
        super(key: key);
  final List<String> columns;
  final bool centerItem;
  final Widget? loading;
  final Widget? ifEmpty;
  final List<double> columnWidth;
  final SimpleDataProvider dataProvider;

  @override
  State<UsefulSimpleDatatable2> createState() => _UsefulSimpleDatatable2State();
}

class _UsefulSimpleDatatable2State extends State<UsefulSimpleDatatable2> {
  final GlobalKey<UsefulDatatableIndicator2State> indicatorKey = GlobalKey();
  bool isLoading = false;
  late SimpleDataProvider dataProvider = widget.dataProvider..init();
  bool hasNext = true;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      if (widget.loading == null) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Center(
          child: widget.loading!,
        );
      }
    }

    return ValueListenableBuilder(
        valueListenable: dataProvider.notifier,
        builder: (context, value, child) {
          return SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildContent(dataProvider.notifier),
                Center(
                  child: UsefulDatatableIndicator2(
                    whenIndexChanged: (int index) async {
                      await dataProvider.onPageChange(index);
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          );
        });
  }

  final ScrollController controller = ScrollController();
  final ScrollController controller2 = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }

  Widget _buildContent(ValueNotifier<List<BaseData>> notifier) {
    if (notifier.value.isEmpty) {
      if (widget.ifEmpty != null) {
        return Expanded(
            child: Center(
          child: widget.ifEmpty,
        ));
      } else {
        return Expanded(
            child: Center(
          child: Text("暂无内容"),
        ));
      }
    } else {
      return Expanded(
          child: Scrollbar(
        controller: controller2,
        thumbVisibility: true,
        child: SingleChildScrollView(
            controller: controller2,
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              controller: controller,
              child: DataTable(
                horizontalMargin: 0,
                dividerThickness: 1,
                columnSpacing: 0,
                rows: notifier.value
                    .map((e) => DataRow(
                        cells: e
                            .toWidgetList()
                            .mapIndexed((i, e1) => DataCell(SizedBox(
                                  width: widget.columnWidth.isNotEmpty
                                      ? widget.columnWidth[i]
                                      : 200,
                                  child: e1,
                                )))
                            .toList()))
                    .toList(),
                columns: widget.columns
                    .mapIndexed((i, e) => DataColumn(
                            label: SizedBox(
                          width: widget.columnWidth.isNotEmpty
                              ? widget.columnWidth[i]
                              : 200,
                          child: Text(e),
                        )))
                    .toList(),
              ),
            )),
      ));
    }
  }
}
