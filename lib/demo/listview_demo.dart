import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: _itemBuilder, itemCount: posts.length);
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