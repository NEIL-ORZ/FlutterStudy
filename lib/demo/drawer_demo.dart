import 'package:flutter/material.dart';

/**
 * 菜单
 */
class DrawerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //用户头部
          UserAccountsDrawerHeader(
            accountName: Text("your name"),
            accountEmail: Text("your email"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/5036212/pexels-photo-5036212.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            ),
            //背景
            decoration: BoxDecoration(
              color: Colors.yellow[100],
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/9554674/pexels-photo-9554674.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[400]!.withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          //抽屉头部
          DrawerHeader(
            child: Text("header".toUpperCase()),
            decoration: BoxDecoration(color: Colors.yellow[100]),
          ),
          ListTile(
            title: Text(
              "Message",
              textAlign: TextAlign.end,
            ),
            trailing: Icon(
              Icons.message,
              size: 25.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "Setting",
              textAlign: TextAlign.end,
            ),
            trailing: Icon(
              Icons.settings,
              size: 25.0,
            ),
            //点击返回
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
