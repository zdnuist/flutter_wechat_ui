import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget {

  final String name;

  ChatPage(name):this.name = name;


  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new ChatePageState(name);
    }
}

class ChatePageState extends State<ChatPage>{
  List messages = [];

  final String name;
  ChatePageState(name):this.name = name;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();

      _loadData();
    }

    _loadData() async {
      String url = "http://www.wanandroid.com/tools/mockapi/6012/chat_20180611";
      http.Response response = await http.get(url);
      setState(() {
              messages = json.decode(response.body);
            });
    }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        appBar: new AppBar(
          title: new Text(name),
          centerTitle: true,
          actions: <Widget>[
            new IconButton(
              onPressed: (){

              },
              icon: new Icon(Icons.more_horiz),
            )
          ],
        ),

        body: _buildListView(),
      );
    }

    Widget _buildListView() {
      return new ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context , i){
          return _buildRow(i);
        },

      );
    }

    Widget _buildRow(int i) {
      var msg = messages[i];
      if(msg["type"] == 0){
        return _buildLeftRow(msg);
      }
      return _buildRightRow(msg);
    }

    Widget _buildLeftRow(var msg) {
      return new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Row(
          children: <Widget>[
            new Image.network(msg["avatar"] , width: 48.0, height: 48.0,),

            new Container(
              margin: const EdgeInsets.only(left: 15.0),
              padding: const EdgeInsets.all(10.0),
              height: 38.0,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                borderRadius: const BorderRadius.all(const Radius.circular(14.0)),
                color: Colors.grey,
              ),

              child: new Text(
                msg["msg"],
                style: new TextStyle(
                  color: Colors.white
                ),
              ),
            )

          ],
        ),
      );

    }

    Widget _buildRightRow(var msg) {

      return new Container(
        margin: const EdgeInsets.only(right: 15.0),
          child: new Row(
            children: <Widget>[
              new Expanded(

                child: new Container(

                ),

              ),
              new Container(
              margin: const EdgeInsets.only(right: 15.0),
              padding: const EdgeInsets.all(10.0),
              height: 38.0,
              decoration: new BoxDecoration(
                borderRadius: const BorderRadius.all(const Radius.circular(14.0)),
                color: Colors.green,
              ),

              child: new Text(
                msg["msg"],
                style: new TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            new Image.network(msg["avatar"] , width: 48.0, height: 48.0,),
            ],
          ),
        );

    }
}