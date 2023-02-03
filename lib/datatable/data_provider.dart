import 'dart:math';

import 'package:flutter/material.dart';

typedef OnFilter<T extends BaseData> = Future<List<T>> Function(
    List<Object> conditions);
typedef Initial<T extends BaseData> = Future<List<T>> Function();
typedef OnLoadMore<T extends BaseData> = Future<List<T>> Function();
typedef OnPageChanged<T extends BaseData> = Future<List<T>> Function(int index);
typedef OnReset<T extends BaseData> = Future<List<T>> Function();

class BaseDataProvider<U extends BaseData> {
  int pageSize;
  bool hasMore = true;

  BaseDataProvider(
      {this.pageSize = 10,
      required this.initial,
      required this.onLoadMore,
      required this.onFilter,
      required this.onPageChanged,
      required this.onReset});

  final Initial initial;
  final OnLoadMore onLoadMore;
  final OnPageChanged onPageChanged;
  final OnFilter onFilter;
  final OnReset onReset;

  static Future<List<BaseData>> mock() async {
    return List.generate(
        10,
        (index) => MockData(
            age: Random.secure().nextInt(85),
            gender: Random.secure().nextInt(2),
            name: "Hello $index"));
  }
}

class SimpleDataProvider<U extends BaseData> extends BaseDataProvider {
  SimpleDataProvider(
      {required super.initial,
      required super.onLoadMore,
      required super.onFilter,
      required super.onPageChanged,
      required super.onReset});

  ValueNotifier<List<U>> notifier = ValueNotifier([]);

  // void forceUpdate(List<U> list) {
  //   notifier.value.clear();
  //   notifier.value = List.from(list);
  // }

  Future init() async {
    List<U> list = await super.initial() as List<U>;
    notifier.value = List.from(list);
  }

  Future loadmore() async {
    List<U> list = await super.onLoadMore() as List<U>;
    notifier.value = List.from(list);
  }

  Future filter(List<Object> conditions) async {
    List<U> list = await super.onFilter(conditions) as List<U>;
    notifier.value = List.from(list);
  }

  Future onPageChange(int index) async {
    List<U> list = await super.onPageChanged(index) as List<U>;
    notifier.value = List.from(list);
  }

  Future reset() async {
    List<U> list = await super.onReset() as List<U>;
    notifier.value = List.from(list);
  }
}

abstract class BaseData {
  List<Widget> toWidgetList();
}

class MockData extends BaseData {
  final String name;
  final int age;
  final int gender;

  MockData({required this.age, required this.gender, required this.name});

  @override
  List<Widget> toWidgetList() {
    return [
      Text(name),
      Text(age.toString()),
      Text(gender == 1 ? "male" : "female")
    ];
  }
}
