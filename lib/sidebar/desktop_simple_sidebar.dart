import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/sidebar/sidebar_item.dart';

import 'sidebar_state.dart';

class DesktopSimpleSidebar extends StatefulWidget {
  const DesktopSimpleSidebar(
      {super.key,
      required this.items,
      this.expandedWidth = 240,
      this.collapsedWidth = 60});
  final List<SidebarItem> items;
  final double expandedWidth;
  final double collapsedWidth;

  @override
  State<DesktopSimpleSidebar> createState() => _DesktopSimpleSidebarState();
}

class _DesktopSimpleSidebarState extends State<DesktopSimpleSidebar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final Animation<double> _animation =
      Tween<double>(begin: widget.collapsedWidth, end: widget.expandedWidth)
          .animate(_controller);

  late double width = _animation.value;

  ValueNotifier<SidebarState> state = ValueNotifier(SidebarState());

  late List<SidebarItem> items = [];

  @override
  void initState() {
    items = widget.items
        .map<SidebarItem>((v) => v.copyWith(onItemClick: (i) {
              state.value = state.value.copyWith(selectedIndex: i);
            }))
        .toList();

    super.initState();
    _controller.addListener(() {
      setState(() {
        width = _animation.value;
      });
      if (width == widget.expandedWidth) {
        state.value = state.value.copyWith(isExpanded: true);
      } else {
        state.value = state.value.copyWith(isExpanded: false);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: state,
        builder: (c, _, __) {
          return SizedBox(
            width: _animation.value,
            child: MouseRegion(
              onEnter: (event) {
                _controller.forward();
              },
              onExit: (event) {
                _controller.reverse();
              },
              child: SizeTransition(
                sizeFactor: _animation,
                axis: Axis.horizontal,
                child: Container(
                  height: double.infinity,
                  width: _animation.value,
                  // color: Colors.red,
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 4),
                      blurRadius: 10,
                      spreadRadius: 3,
                    )
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: items
                        .map((b) => SidebarItemWidget(
                              state: state.value,
                              item: b,
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
