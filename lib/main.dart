import 'package:flutter/material.dart';
import 'package:measured_size/measured_size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Size? size;

  int changeSize(){
    if(size == null){
      return 0;
    }
    return ((size!.height + AppBar().preferredSize.height + MediaQuery.of(context).padding.top) + (MediaQuery.of(context).size.height * 0.065 + 20)).round();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'size = ${changeSize()}' + " : ${MediaQuery.of(context).size.height.round()}",
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
              itemCount: 11,
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
