import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/home/ui/widgets/items.dart';

class ModelCart with ChangeNotifier{
  List <Items> _items = [


  ];
  double _price = 0.0;
  void add(Items item){
    _items.add(item);
    _price += item.price;
    notifyListeners();
  }
  int get count {
    return _items.length;
  }
  double get price {
    return _price;
  }
  List<Items> get Pasketitems {
    return _items;
  }
  void remove(Items item) {
    _items.remove(item);
    _price -= item.price;
    notifyListeners();
  }

}