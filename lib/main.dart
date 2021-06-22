import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Counter()));
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                    icon: Icon(Icons.remove_circle),
                    iconSize: 96.0,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "$count",
                      style: TextStyle(fontSize: 96.0),
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    icon: Icon(Icons.add_circle),
                    iconSize: 96.0,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: Text("Reset"),
            )
          ],
        ),
      ),
    );
  }
}
