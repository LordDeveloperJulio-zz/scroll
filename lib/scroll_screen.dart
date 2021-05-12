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
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text('   Apartamento 3 dorms, 72m'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      '   Rua Lisboa, Pinheiros, São Paulo',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Image.network(
                                  'https://imgbr.imovelwebcdn.com/avisos/2/29/49/18/82/98/720x532/1907296310.jpg',
                                  width: 80),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Quando é melhor para você?",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize:
                      16),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20,),
                       CircleAvatar(
                         radius: 26,
                         child: Text("Ter\n31"),
                       ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 26,
                          child: Text("Quar\n1"),
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 26,
                          child: Text("Qui\n2"),
                        ),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 26,
                          child: Text("Sex\n3"),
                        )
                      ],
                    ),
                    SizedBox(height: 16,),
                    Text(
                      "Escolha um horário nesse dia",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize:
                      16),
                    ),
                  ],
                )
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
