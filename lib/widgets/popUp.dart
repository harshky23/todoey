import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/ProviderUpdate.dart';

String input=' ss';
class PopUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task',textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 35,fontWeight: FontWeight.bold
              ),),
              TextField(
                autofocus: true,
                maxLength: 25,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,fontSize: 20),
              onChanged: (value) {
              input=value;
              }
              ),
              TextButton(
                  onPressed: (){
                    Provider.of<ProviderUpdate>(context,listen: false).addList(input);
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(
                      child: Text('Add',
                    style: TextStyle(color: Colors.white,fontSize: 30),
                    ),
                    ),
                  ))
            ],
          ),
        ),

      ),
    );
  }
}
