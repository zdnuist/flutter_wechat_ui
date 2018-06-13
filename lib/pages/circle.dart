import 'package:flutter/material.dart';

class CirclePage extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new CirclePageState();
    }
}

class CirclePageState extends State<CirclePage>{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
        home:new Scaffold(
          body: new Stack(
            children: <Widget>[
              new  Container(
                padding: const EdgeInsets.only(bottom: 20.0),
                child:  new Image.network("http://ww1.sinaimg.cn/large/0065oQSqly1fs8u1joq6fj30j60orwin.jpg",fit: BoxFit.fitWidth,),
                height: 300.0,
                width: 750.0,
              ),
              new Container(
                margin: const EdgeInsets.only(top: 32.0),
                child:  new IconButton(icon: new Icon(Icons.arrow_back), 
                color: Colors.white,
                onPressed: (){
                  Navigator.of(context).pop();
                },),

              ),
              new Positioned(
                bottom: 10.0,
                right: 0.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     new Container(
                       margin: const EdgeInsets.only(right: 15.0),
                      child: new Text(".Fog",style: new TextStyle(

                        color: Colors.white,
                        fontSize: 24.0
      
                      ),),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      child: new Image.network("http://download.loocha.com.cn/m/uavatar/15179328/2248/3915/69c000e6-874e-4337-8ae6-2d54319c3355.jpg.jpg",width: 66.0,height: 66.0,),
                    )
                    
                   
                  ],
                ),
              )
             
            ],
          )
        )
      );
    }
}