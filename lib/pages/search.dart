import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new SearchPageState();
    }
}

class SearchPageState extends State<SearchPage> {

  final fontStyle = const TextStyle(
    color: Colors.green,
    fontSize: 18.0
  );

  Widget _buildBody() {
    return new Column(
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.only(top: 30.0,bottom: 30.0),
          child: new Text("搜索指定内容",style: new TextStyle(
            color: Colors.grey,
            fontSize: 14.0
          ),),
        ),
        new Row(
          
          children: <Widget>[
            new Expanded(
              child:  new Container(
                alignment: Alignment.center,
                child: new FlatButton(
                  onPressed: (){

                  },
                  child: new Text(
                    "朋友圈",
                    style: fontStyle,
                  ),
                  ),
                
             ),
            ),

            new Container(
              decoration: new BoxDecoration(
                border: new BorderDirectional(
                  start: new BorderSide(
                    color: Colors.grey,
                    width: 1.0
                  )
                )
              ),

              height: 18.0,
              width: 1.0,

            ),
            
            new Expanded(
              
              child: new Container(
                alignment: Alignment.center,
                child: Text("文章",style: fontStyle),
              ) ,
            ),
            new Container(
              decoration: new BoxDecoration(
                border: new BorderDirectional(
                  start: new BorderSide(
                    color: Colors.grey,
                    width: 1.0
                  )
                )
              ),

              height: 18.0,
              width: 1.0,

            ),
            new Expanded(
              child: new Container(
                alignment: Alignment.center,
                child: new Text("公众号",style: fontStyle),
              )
              
            )
          ],
        ),
        new Container(
          padding: const EdgeInsets.only(top: 30.0),
        ),
        new Row(
          children: <Widget>[
            new Expanded(
              child: new Container(
                alignment: Alignment.center,
                child: new Text("小说",style: fontStyle),
              )
              
            ),
            new Container(
              decoration: new BoxDecoration(
                border: new BorderDirectional(
                  start: new BorderSide(
                    color: Colors.grey,
                    width: 1.0
                  )
                )
              ),

              height: 18.0,
              width: 1.0,

            ),
            new Expanded(
              
              child: new Container(
                alignment: Alignment.center,
                child: Text("音乐",style: fontStyle),
              ) ,
            ),new Container(
              decoration: new BoxDecoration(
                border: new BorderDirectional(
                  start: new BorderSide(
                    color: Colors.grey,
                    width: 1.0
                  )
                )
              ),

              height: 18.0,
              width: 1.0,

            ),
            new Expanded(
              child: new Container(
                alignment: Alignment.center,
                child: new Text("表情",style: fontStyle),
              )
              
            )
          ],
        )
      ],
    );
  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return 
      new MaterialApp(
        theme: new ThemeData(
          primaryColor: Colors.grey
        ),
        home:   new Scaffold(
        appBar:  new AppBar(
          title: _buildHeader(),
        ),
        body: _buildBody()
      ),
      );
    }

    Widget _buildHeader() {
      return 
      new Row(
        children: <Widget>[
          new Expanded(
            child: new Container(
        margin: const EdgeInsets.only(top: 2.0,left: 2.0,bottom: 2.0),
        padding: const EdgeInsets.all(3.0),
        decoration: new BoxDecoration(
                borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
                color: Colors.white,
              ),
        child: new Row(
          
          children: <Widget>[
            new Icon(Icons.search),
            new Expanded(
              
              child: new TextField(
                autofocus: true,
                decoration: new InputDecoration.collapsed(
                  hintText: "搜索",
                  hintStyle: new TextStyle(
                    color: Colors.grey
                  )
                ),
              ),

            ),
            new Icon(Icons.voice_chat)
          ],
        )
      ),
          ),

          new SizedBox(
            width: 60.0,
            child: new FlatButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: new Text(
                    "取消",
                    style: fontStyle,
                  ),
                  ),
          )

           
            
        ],
      );
      
    }

  
}

