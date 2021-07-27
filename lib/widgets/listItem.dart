import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/ProviderUpdate.dart';
import 'items.dart';
class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderUpdate>(builder: (context,naam,child){  // naam == Provider.of<ProviderUpdate>(context)
      return ListView.builder(itemBuilder: (context,index){
        return ListItem(
            taskTittle : naam.tasks[index].name,
            isChecked: naam.tasks[index].isCheck,
            check:  (bool? state){
                  naam.change(naam.tasks[index]);
            },
        indexFind: (){naam.delete(naam.tasks[index]);},
        );
      },
        itemCount: naam.tasks.length,
      );
    });

  }
}
