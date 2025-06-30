import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier {
  String Name = "Welcome to Provider Example";
  
  changeName() {
    Name = "Rawan";
    notifyListeners();
  }
}
