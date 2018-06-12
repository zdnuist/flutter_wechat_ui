import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new AbsorbPointerPageState();
    }
}

///
///事件拦截
///如果absorbing=true,child获取不到点击事件
///
class AbsorbPointerPageState extends State<AbsorbPointerPage>{

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new AbsorbPointer(
          
          absorbing: true,
          child: new IconButton(
            icon: new Icon(Icons.account_box),
            iconSize: 40.0,
            onPressed: (){
              print("pressed");
            },
          )
        );
    }
}