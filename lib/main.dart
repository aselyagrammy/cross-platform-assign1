import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayText = "Hello, Flutter!";
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(title: Text('Flutter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(displayText, style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText = "Button Clicked!";
                  });
                },
                child: Text("Change Text"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText = "";
                  });
                },
                child: Text("Clear Text"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bgColor = bgColor == Colors.white ? Colors.blue : Colors.white;
                  });
                },
                child: Text("Change Background"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
