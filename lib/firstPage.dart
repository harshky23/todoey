import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/ProviderUpdate.dart';
import 'package:todo_list/widgets/items.dart';
import 'package:todo_list/widgets/popUp.dart';
import 'widgets/listItem.dart';

class First extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: (){
        showModalBottomSheet(context: context, builder: (context)=>PopUp());
        },
        child: Icon(Icons.add),
      )),
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Stack(
         children:[ Padding(
            padding:  EdgeInsets.only(top: 10.0,left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RawMaterialButton(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                shape: CircleBorder(),
                fillColor: Colors.white,
                onPressed: (){},
                child: Icon(Icons.list,color: Colors.lightBlue,size: 35,),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10.0),
                  child: Text('Todoey',style: TextStyle(
                    color: Colors.white,fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Text('${Provider.of<ProviderUpdate>(context).tasks.length} Tasks',style: TextStyle(
                  color: Colors.white,fontSize: 30,))
              ],
            ),
          ),
           Padding(
             padding:  EdgeInsets.only(top: 210.0),
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
               ),
               child: Padding(
                 padding: EdgeInsets.only(top: 40.0,left: 30),
                 child: Task()
               ),
             ),
           ),
        ]),
      ),
    ));
  }
}



