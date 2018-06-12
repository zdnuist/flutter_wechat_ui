import 'package:flutter/material.dart';

import 'demo_absorb_pointer.dart';
import 'demo_semantics.dart';


class DemoMainPage extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new DemoMainPageState();
    }
}

///
///事件拦截
///如果absorbing=true,child获取不到点击事件
///
class DemoMainPageState extends State<DemoMainPage>{

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("demo main"),
        ),

        body: 
        // new AbsorbPointerPage(),
        new SemanticsPage()
      );
    }
}