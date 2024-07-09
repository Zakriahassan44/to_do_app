import 'package:flutter/material.dart';
import 'package:to_do_app/Util/todo_tile.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of to do task
  List toDoList = [
    ["Make Turtorial", false,],
    [ "Do Exersize", false,]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(child: Text('TO Do',
        style: TextStyle(color: Colors.black),)),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,

        itemBuilder: (context, index){
          return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][0],
              onChanged: (vaule) => checkBoxChanged,
        },


      ),
    );
  }
}
