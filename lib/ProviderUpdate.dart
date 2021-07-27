import 'package:flutter/material.dart';
import 'package:todo_list/type.dart';
class ProviderUpdate extends ChangeNotifier{

  List<Type> tasks=[
    Type(name: 'hi'),
  ];

void addList(txt){
  tasks.add(Type(name: txt));
  notifyListeners();
}
void delete(Type data){
  tasks.remove(data);
  notifyListeners();
}

void change(Type ty){
  ty.swap();
  notifyListeners();
}
}