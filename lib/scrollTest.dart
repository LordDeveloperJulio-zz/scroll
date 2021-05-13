import 'package:flutter/material.dart';
import 'package:measured_size/measured_size.dart';

class YourPage extends StatefulWidget {
  late final String title;
  @override
  _YourPageState createState() => _YourPageState();
}

class _YourPageState extends State<YourPage> {
  Size? size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'size = ${((size!.height + AppBar().preferredSize.height + MediaQuery.of(context).padding.top) + (MediaQuery.of(context).size.height * 0.065 + 20)).round()}' +
              " : ${MediaQuery.of(context).size.height.round()}",
        ),
      ),
      body: SingleChildScrollView(
        child: MeasuredSize(
          onChange: (Size size) {
            setState(() {
              this.size = size;
            });
          },
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (_, index) => ListTile(
                title: Text("index: $index"),
              )),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.065,
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Continuar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ))),
    );
  }
}
