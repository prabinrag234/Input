import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _entrytext = TextEditingController();

  String _displayText = 'Text should be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            color: Color.fromARGB(255, 216, 207, 125),
            child: Column(
              children: [
                TextField(
                  controller: _entrytext,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type Something....'),
                ),
                ElevatedButton(
                    onPressed: () {
                      //Get Data
                      print(_entrytext.text);
                      setState(() {
                        _displayText = _entrytext.text;
                      });
                    },
                    child: Text('Click Me')),
                Text(_displayText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
