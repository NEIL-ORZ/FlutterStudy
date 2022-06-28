import 'package:flutter/material.dart';

/**
 * 底部导航
 */
class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }

}

class _BottomNavigationBarDemoState extends State {

  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //超出三个需要设置
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.workspaces),
          label: "workspaces",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "list",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "favorite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "my",
        ),
      ],
    );
  }

}