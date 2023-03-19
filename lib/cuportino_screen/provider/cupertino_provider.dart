import 'package:copertino_stores/cuportino_screen/view/Cupertino_Screen.dart';
import 'package:copertino_stores/cuportino_screen/view/search_screen.dart';
import 'package:copertino_stores/cuportino_screen/view/shopping_cart.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_Provider extends ChangeNotifier
{
  List Screen = [
    Cupertino_Screen(),
    Search_Screen(),
    Shopping_Cart_Screen(),
  ];


}