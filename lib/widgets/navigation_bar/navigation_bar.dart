import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              _NavBarItem(title: 'Episodes'),
              SizedBox(width: 60),
              _NavBarItem(title: 'About'),
            ],
          ),
        ],
      ),
    );
  }
}


class _NavBarItem extends StatelessWidget {
  const _NavBarItem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(
      fontSize: 18
    ),);
  }
}
