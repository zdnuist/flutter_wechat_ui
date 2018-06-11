import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new FindPageState();
    }
}

class Item{
   Icon icon;
   int type;
   String title;

  Item(this.icon,this.title,this.type);
}

class FindPageState extends State<FindPage> {

  List<Item> items;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      loadDtas();
    }

  void loadDtas(){
    items = <Item>[

      new Item(new Icon(Icons.cloud_circle) , "朋友圈", 0),
      new Item(null , "", 1),

      new Item(new Icon(Icons.scanner) , "扫一扫", 0),
      new Item(new Icon(Icons.healing) , "摇一摇", 0),
      new Item(null , "", 1),

      new Item(new Icon(Icons.looks) , "看一看", 0),
      new Item(new Icon(Icons.search) , "搜一搜", 0),
      new Item(null , "", 1),

      new Item(new Icon(Icons.person) , "附近的人", 0),
      new Item(new Icon(Icons.border_outer) , "漂流瓶", 0),
      new Item(null , "", 1),

      new Item(new Icon(Icons.shop) , "购物", 0),
      new Item(new Icon(Icons.games) , "游戏", 0),
      new Item(null , "", 1),

      new Item(new Icon(Icons.link) , "小程序", 0),


    ];  
  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Container(
        padding: const EdgeInsets.only(top: 20.0),
        child: new ListView.builder(
        
        itemBuilder: (context, i){
          if(i.isOdd) return new Divider(height: 1.0,);
          int index = i~/2;
          if(index >= items.length){
            return null;
          }
          return buildRow(items[index]);
        },
      ),
      color: const Color(0xFFf0eff5),
      );
    }


    Widget buildRow(Item item){
      print(item.title);

      if(item.type == 0){
        return new Container(
          color: Colors.white,
          height: 44.0,
          padding: const EdgeInsets.only(left: 10.0,right: 10.0),
          child: new Row(
            children: <Widget>[
              item.icon,
              new Expanded(
                child: new Container(
                  child:Text(item.title) ,
                  padding: const EdgeInsets.only(left: 15.0),
                ) ,
              ),
              new Icon(Icons.arrow_forward_ios)
            ],
          ),
        );
      }

      return new Container(
        height: 23.0,
      );


    }
    


}