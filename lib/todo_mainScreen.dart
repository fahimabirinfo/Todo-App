import 'package:application/add_new_todo_screen.dart';
import 'package:application/update_todo_screen.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo App'),
      ),
      body: ListView.builder(
        itemCount: 3,
          itemBuilder: (context, index){
          return ListTile(
            title: Text('Title of ToDo'),
            subtitle: Text('Description'),
            leading: Text('Status'),
            trailing: Wrap(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                IconButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => UpdateTodoScreen()));
                }, icon: Icon(Icons.edit)),
              ],
            ),
          );
          }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddNewTodoScreen()));
      },
        child: const Icon(Icons.add),),

    );
  }
}