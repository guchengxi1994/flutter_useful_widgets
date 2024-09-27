import 'package:flutter/material.dart';
import 'package:flutter_useful_widgets/sidebar/sidebar.dart';

class UsefulDesktopSidebarDemo extends StatelessWidget {
  const UsefulDesktopSidebarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          DesktopSimpleSidebar(
            items: [
              SidebarItem(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  inActiveIcon: const Icon(Icons.home),
                  name: "Home",
                  index: 0),
              SidebarItem(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                  inActiveIcon: const Icon(Icons.home),
                  name: "Home",
                  index: 1),
            ],
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
