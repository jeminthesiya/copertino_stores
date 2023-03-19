import 'package:copertino_stores/cuportino_screen/provider/cart_provider.dart';
import 'package:copertino_stores/cuportino_screen/provider/cupertino_provider.dart';
import 'package:copertino_stores/cuportino_screen/view/Cupertino_Screen.dart';
import 'package:copertino_stores/cuportino_screen/view/Tab_Bar.dart';
import 'package:copertino_stores/cuportino_screen/view/search_screen.dart';
import 'package:copertino_stores/cuportino_screen/view/shopping_cart.dart';
import 'package:flutter/cupertino.dart' as cp;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Cupertino_Provider(),
        ),ChangeNotifierProvider(
          create: (context) => Cart_provider(),
        ),
      ],
      child: cp.CupertinoApp(
        theme: cp.CupertinoThemeData(
          brightness: Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: 'cart',
        routes: {
          '/': (p0) => TabBar_Screen(),
          'cscreen': (p0) => Cupertino_Screen(),
          'search': (p0) => Search_Screen(),
          'cart': (p0) => Shopping_Cart_Screen(),
        },
      ),
    ),
  );
}
