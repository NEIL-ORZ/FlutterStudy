import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  Widget _itemBuild(BuildContext context, int index) {
    return Container(
      child: Image.network(posts[index].imgUrl,fit: BoxFit.cover,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _itemBuild,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
    );
  }
}

class GridViewContDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.grey,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: _buildTiles(10),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return SizedBox(
      child: Image.network(posts[index].imgUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _pageItemBuilder,
      itemCount: posts.length,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //滚动方向
      scrollDirection: Axis.horizontal,
      onPageChanged: (current) => debugPrint("current $current"),
      controller: PageController(initialPage: 1, viewportFraction: 0.85),
      children: [
        Container(
          color: Colors.purple,
          alignment: Alignment.center,
          child: const Text(
            "one",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.brown,
          alignment: Alignment.center,
          child: const Text(
            "two",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text(
            "three",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
