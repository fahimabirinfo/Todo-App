import 'package:flutter/material.dart';

class UpdateTodoScreen extends StatefulWidget {
  const UpdateTodoScreen({super.key});

  @override
  State<UpdateTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<UpdateTodoScreen> {

  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddNewTodoScreen'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (String? value){
                    if(value == null || value.trim().isEmpty){
                      return 'Enter your title';
                    }
                  },
                  decoration: const InputDecoration(
                      labelText: 'Title',
                      hintText: 'Write Here'
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (String? value){
                    if(value == null || value.trim().isEmpty){
                      return 'Enter your description';
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    hintText: 'Write Here',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: (){}, child: const Text('Click Here',style: TextStyle(color: Colors.white),),),

            ],
          ),
        ),
      ),
    );
  }
}
