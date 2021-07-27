import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/ProviderUpdate.dart';
import 'package:todo_list/firstPage.dart';
import 'ProviderUpdate.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) { return ProviderUpdate(); },
        child: First());
  }
}
