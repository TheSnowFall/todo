import 'package:flutter/material.dart';
import 'package:todo/to_do.dart';
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do list',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstPage(),
    );
  }
}

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  ToDo todo1= ToDo('Rtc', 'everything ok', 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your To-Do list'),
      ),
      body: Center(
        child:ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.attachment_outlined),
              title: Text('${todo1.title}'),
            ),
            ListTile(
              leading: Icon(Icons.attachment_outlined),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.attachment_outlined),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),);
        },
        child: Icon(Icons.add),

      ),
    );
  }
}

