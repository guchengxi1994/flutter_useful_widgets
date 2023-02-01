import 'package:flutter/material.dart';

typedef QueryByIndex = dynamic Function(int selectedIndex);
typedef IndicatorBuilder = Widget Function(Widget child);

const double size = 30;

typedef NextPage = dynamic Function(int currentIndex);
typedef PrevPage = dynamic Function(int currentIndex);
