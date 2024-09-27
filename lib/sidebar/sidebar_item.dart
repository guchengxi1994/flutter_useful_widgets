import 'package:flutter/material.dart';

import 'sidebar_state.dart';

class SidebarItem {
  final Widget icon;
  final Widget inActiveIcon;
  final String name;
  final int index;
  OnItemClick? onItemClick;

  SidebarItem({
    required this.icon,
    required this.index,
    required this.name,
    required this.inActiveIcon,
    this.onItemClick,
  });

  setCallback(OnItemClick callback) {
    onItemClick = callback;
  }

  SidebarItem copyWith({
    Widget? icon,
    Widget? inActiveIcon,
    String? name,
    int? index,
    OnItemClick? onItemClick,
  }) {
    return SidebarItem(
      icon: icon ?? this.icon,
      inActiveIcon: inActiveIcon ?? this.inActiveIcon,
      name: name ?? this.name,
      index: index ?? this.index,
      onItemClick: onItemClick ?? this.onItemClick,
    );
  }
}

typedef OnItemClick = void Function(int index);

class SidebarItemWidget extends StatelessWidget {
  const SidebarItemWidget(
      {super.key,
      required this.item,
      required this.state,
      this.expandedWidth = 240,
      this.collapsedWidth = 60});

  final SidebarItem item;

  final SidebarState state;
  final double expandedWidth;
  final double collapsedWidth;

  @override
  Widget build(BuildContext context) {
    final isExpanded = state.isExpanded;
    final isSelected = state.selectedIndex == item.index;
    return GestureDetector(
      onTap: () {
        if (item.onItemClick != null) {
          item.onItemClick!(item.index);
        }
      },
      child: Container(
        // alignment: Alignment.centerLeft,
        width: isExpanded ? expandedWidth : collapsedWidth,
        padding: const EdgeInsets.all(10),
        child: isExpanded
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: collapsedWidth - 20,
                    child: Center(
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: isSelected ? item.icon : item.inActiveIcon,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: expandedWidth - collapsedWidth,
                    child: Text(
                      item.name,
                      style: TextStyle(
                          color: isSelected ? Colors.black : Colors.grey),
                    ),
                  )
                ],
              )
            : Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: isSelected ? item.icon : item.inActiveIcon,
                ),
              ),
      ),
    );
  }
}
