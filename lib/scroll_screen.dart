import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

List<String> list = [];

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Quero agendar visita",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                    CircleAvatar(child: Icon(Icons.ac_unit),),
                  ],
                ),
          )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      "Continuar",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ))),
        ],
      ),
    );
  }
}
