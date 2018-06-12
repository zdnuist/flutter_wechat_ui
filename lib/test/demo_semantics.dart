import 'package:flutter/material.dart';

class SemanticsPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new SemanticsPageState();
    }
}

class SemanticsPageState extends State<SemanticsPage> {

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Semantics(
        child: new GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            print("tapped");
          },
          onVerticalDragDown: (t){
            print(t);
          },
          child: new Text("ABC" , style: new TextStyle(
            fontSize: 100.0
          ),),
        ),
       
        label: "1234",
        // container: true,
        button: true,
      );
    }
}