import 'package:flutter/material.dart';

import '../navigation_bar/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 30),
          NavBarItem(title: title),
        ],
      ),
    );
  }
}
