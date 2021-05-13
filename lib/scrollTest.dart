import 'package:flutter/material.dart';

class YourPage extends StatefulWidget {
  @override
  _YourPageState createState() => _YourPageState();
}

class _YourPageState extends State<YourPage> {
  double sizeBody = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text("index: $index"),
            );
          }),
    );
  }
}
