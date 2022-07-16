import 'package:flutter/material.dart';
import '../model/post.dart';

/**
 * 碎片
 */
class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text("SliverDemo"),
            // pinned: true,//固定
            floating: true,//随着滚动
            expandedHeight: 178.0,//可伸展的高度
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flutter"),
              background: Image.network(posts[0].imgUrl,fit: BoxFit.cover,),
            ),//滚动标题
          ),
          //安全区域
          SliverSafeArea(
              //内边距
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListDemo(),
          ))
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Material(
            borderRadius: BorderRadius.circular(24.0),
            elevation: 14.0,
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    posts[index].imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 32.0,
                  left: 32.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        posts[index].title,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      Text(
                        posts[index].author,
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }, childCount: posts.length), //构建项
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //列数
        crossAxisSpacing: 8.0, //间距
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.6, //宽高比
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imgUrl,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length), //构建项
    );
  }
}
