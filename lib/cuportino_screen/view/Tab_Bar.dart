import 'package:copertino_stores/cuportino_screen/provider/cupertino_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class TabBar_Screen extends StatefulWidget {
  const TabBar_Screen({Key? key}) : super(key: key);

  @override
  State<TabBar_Screen> createState() => _TabBar_ScreenState();
}

class _TabBar_ScreenState extends State<TabBar_Screen> {
  Cupertino_Provider? Cupertinotrue;
  Cupertino_Provider? Cupertinofalse;

  @override
  Widget build(BuildContext context) {
    Cupertinofalse = Provider.of<Cupertino_Provider>(context, listen: false);
    Cupertinotrue = Provider.of<Cupertino_Provider>(context, listen: true);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: "Cart"),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return Center(
              child: Cupertinofalse!.Screen[index],
            );
          },
        );
      },
    );
  }
}
