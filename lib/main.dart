// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'model/Post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(title: Text("flutterdemo")),
        body: ListView.builder(
            itemBuilder: _itemBuilder, itemCount: posts.length)
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(posts[index].imgUrl),
          SizedBox(height: 8.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: 16.0)
        ],
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("flutterdemo"),
    );
  }
}
