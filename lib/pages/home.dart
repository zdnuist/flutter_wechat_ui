import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new HomePageState();
    }
}

class Message {
  final String avatar;
  final String name;
  final String desc;
  final int time;
}

class HomePageState extends State<HomePage> {



  @override
    void initState() {
      // TODO: implement initState
      super.initState();
    }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Text("home");
    }


    Widget _buildMessage(){
      return new ListView.builder(
        padding: const EdgeInsets.all(18.0),

        itemBuilder: (context , i) {
          if(i.isOdd) return new Divider();

          final index = i ~/ 2;

        },
      );
    }
}