import 'package:flutter/material.dart';

class AddTodoComplete extends StatelessWidget {
  @override
  addingTodo createState() => addingTodo();
}

class addingTodo extends State<AddTodoComplete> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task list'),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(color: Colors.purpleAccent),
            ),
            TextField(
              onChanged: (String value) {
                setState(() {
                  text = value;
                });
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.yellowAccent)),
                onPressed: () {
                  Navigator.of(context).pop(text);
                },
                child: Text(
                  'Add task list',
                  style: TextStyle(color: Colors.pinkAccent),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.orangeAccent),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
