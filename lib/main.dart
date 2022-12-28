import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '8 ball',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _answers = [
    'It is certain',
    'Try again later',
    'My reply is no',
    'Probably',
    'I do not know',
  ];
  String _message = 'Click the button';
  Random random = new Random();
  void _displayMessage() {
    int randomNumber = random.nextInt(_answers.length);
    setState(() {
      _message = _answers[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              width: 400,
              child: Card(
                  color: Colors.yellow,
                  elevation: 10,
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: _displayMessage,
                            child: Text('click Me'),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Text(
                              _message,
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ))))),
    );
  }
}
