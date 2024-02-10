
import 'package:flutter/material.dart';

class TasksView extends StatelessWidget {
  TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,shadowColor: Colors.black,
        title:const Text('My Tasks',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
      ),
      body: Container(
        child: ListView.builder(
          padding:const EdgeInsets.all(3),
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.orange.shade300,
              child: ListTile(
                selectedColor: Colors.blue,
                title:Text(taskList[index],style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                focusColor: Colors.deepPurple,
                onTap: () async{
                  var result =await Navigator.pushNamed(context, '/${taskList[index]}');
                  showToast(context, result.toString(), Colors.green);
                },
              )
            );
          },
        ),
      )
    );
  }
  final List<String> taskList =['Counter'];
}
void showToast(BuildContext context, String txt,Color color) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      duration:const Duration(seconds: 1),
      backgroundColor: color,
      content: Text(txt,style: const TextStyle(fontSize: 18),),
    ),
  );
}