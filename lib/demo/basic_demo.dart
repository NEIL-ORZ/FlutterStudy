import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 基础部件
 */
class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

//容器
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://images.pexels.com/photos/5036212/pexels-photo-5036212.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent,
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Row(
        //主轴对齐
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: const Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            // color: Colors.blue,//和装饰盒子冲突
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            //装饰盒子
            decoration: BoxDecoration(
                color: Colors.blue,
                // border: Border(
                //   top: BorderSide(
                //     color: Colors.red,
                //     width: 3.0,
                //     style: BorderStyle.solid,
                //   ),
                // )
                //边框
                border: Border.all(
                  color: Colors.red,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(10.0),
                //   bottomLeft: Radius.circular(20.0),
                // ),
                //圆角
                // borderRadius: BorderRadius.circular(10.0),
                //阴影
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(5.0, 10.0),
                    color: Colors.brown,
                    //模糊
                    blurRadius: 5.0,
                    //扩散
                    spreadRadius: 3.0,
                  ),
                ],
                //形状
                shape: BoxShape.circle,
                //渐变
                gradient: const LinearGradient(
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.purpleAccent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          )
        ],
      ),
    );
  }
}

//富文本
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
      text: "富文本",
      style: TextStyle(
        color: Colors.yellow,
        fontSize: 34.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w100,
      ),
      children: [
        TextSpan(
          text: "1122",
          style: TextStyle(
            color: Colors.red,
            fontSize: 24.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w300,
          ),
        ),
        TextSpan(
          text: "3344",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ));
  }
}

//文本
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = const TextStyle(
    fontSize: 20,
  );

  final String _title = "这是一首诗";

  @override
  Widget build(BuildContext context) {
    return Text(
      "$_title 。冰雪消融，溪水潺潺，看到远山渐绿的颜色，那是春的语言；草长莺飞，丝绦拂堤，看到枝头重现的雀跃，那是春的呢喃；",
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
