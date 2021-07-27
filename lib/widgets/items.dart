import 'package:flutter/material.dart';
class ListItem extends StatelessWidget {
  ListItem({required this.taskTittle,required this.isChecked,required this.check,required this.indexFind});
  final String taskTittle;
  final  bool isChecked;
  final Function indexFind;
  final void Function(bool?)  check;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: ()=>indexFind(),
      title : Text(taskTittle,style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null),),
      trailing:Checkbox(value: isChecked,
         onChanged: check,
      )
      );
  }
}

