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

  int countPlus = 0;

  bool sizeScreen = false;

  int tamanhoDatela = 0;

  int changeSize() {
    if (size == null) {
      return 0;
    }
    if (((size!.height +
                AppBar().preferredSize.height +
                MediaQuery.of(context).padding.top) +
            (MediaQuery.of(context).size.height * 0.065 + 20)) >=
        tamanhoDatela) {
      sizeScreen = true;
    } else {
      sizeScreen = false;
    }

    return ((size!.height +
                AppBar().preferredSize.height +
                MediaQuery.of(context).padding.top) +
            (MediaQuery.of(context).size.height * 0.065 + 20))
        .round();
  }

  @override
  Widget build(BuildContext context) {
    tamanhoDatela = MediaQuery.of(context).size.height.round();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'size = ${changeSize()}' +
              " : ${MediaQuery.of(context).size.height.round()}",
        ),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.grey)),
            onPressed: () {
              setState(() {
                countPlus -= 1;
              });
            },
            child: Text(" - "),
          ),
          SizedBox(
            width: 5,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((states) => Colors.grey)),
            onPressed: () {
              setState(() {
                countPlus += 1;
              });
            },
            child: Text(" + "),
          ),
          SizedBox(
            width: 5,
          ),
        ],
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
              itemCount: countPlus,
              itemBuilder: (_, index) => ListTile(
                    title: Text("index: $index"),
                  )),
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
              color: sizeScreen == true ? Colors.grey : Colors.transparent,
              width: 1,
            )),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                "Continuar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          )),
    );
  }
}
