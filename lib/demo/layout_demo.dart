import 'package:flutter/material.dart';

/**
 * 布局小部件
 */
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      //交叉轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconBadge(Icons.pool),
        //固定尺寸的盒子
        SizedBox(
          width: 200,
          height: 100,
          child: Container(
            //对齐
            alignment: const Alignment(1.0, 0),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(2, 100, 100, 1.0),
            ),
            child: IconBadge(Icons.pool),
          ),
        ),
        IconBadge(Icons.pool)
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 100,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
