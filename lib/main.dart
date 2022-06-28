// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //设置调试标识
      home: Home(),
      theme: ThemeData(
          //主题色
          primarySwatch: Colors.yellow,
          //高亮色
          highlightColor: Colors.white38,
          //水波色
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //tab导航架构
      length: 4,
      child: Scaffold(
        //基本结构
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          //左导航，自定义不能控制Drawer
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint("leading onPressed"),
          // ),
          //右操作
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint("search onPressed"),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'More',
              onPressed: () => debugPrint("more onPressed"),
            ),
          ],
          title: Text("flutterstudy"),
          //tab导航
          bottom: const TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: [
                Tab(icon: Icon(Icons.local_activity)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.linked_camera)),
                Tab(icon: Icon(Icons.phone)),
              ]),
        ),
        //tab主视图
        body: TabBarView(children: [
          ListViewDemo(),
          BasicDemo(),
          LayoutDemo(),
          ViewDemo()
        ]),
        //左抽屉
        drawer: DrawerDemo(),
        //底部导航
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
