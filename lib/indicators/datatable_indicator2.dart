// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import 'base.dart';

/// dont need to provide pageCount
class UsefulDatatableIndicator2 extends StatefulWidget {
  const UsefulDatatableIndicator2({
    Key? key,
    this.indicatorBuilder,
    this.initialIndex = 1,
    required this.whenIndexChanged,
  }) : super(key: key);
  final int initialIndex;
  final IndicatorBuilder? indicatorBuilder;
  final QueryByIndex whenIndexChanged;

  @override
  State<UsefulDatatableIndicator2> createState() =>
      UsefulDatatableIndicator2State();
}

class UsefulDatatableIndicator2State extends State<UsefulDatatableIndicator2> {
  // ignore: prefer_final_fields
  late List<dynamic> _list = ["上一页", _pageIndex, "下一页"]; // 存放页码的数组
  late int _pageIndex = widget.initialIndex; // 当前页码

  void changeIndex(int i) {
    setState(() {
      _pageIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: _list.mapIndexed((index, element) {
        if (index == 0) {
          return GestureDetector(
            onTap: () {
              if (_pageIndex == 1) {
                return;
              }
              setState(() {
                _pageIndex--;
                widget.whenIndexChanged(_pageIndex);
              });
            },
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 230, 223, 223)),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  color: Colors.white),
              child: const Icon(Icons.chevron_left),
            ),
          );
        }
        if (index == _list.length - 1) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  _pageIndex++;
                  widget.whenIndexChanged(_pageIndex);
                });
              },
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 230, 223, 223)),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    color: Colors.white),
                child: const Icon(Icons.chevron_right),
              ));
        }
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 230, 223, 223)),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: Colors.blue),
          child: Center(
            child: Text(_pageIndex.toString()),
          ),
        );
      }).toList(),
    );
  }
}
