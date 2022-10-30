import 'package:flutter/cupertino.dart';

class HomeModel extends ChangeNotifier{

  int i=0;

   updateData(){
    i++;
    notifyListeners();
  }
}