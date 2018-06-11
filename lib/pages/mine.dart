import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new MinePageState();
    }
}

class Item{
   Icon icon;
   int type;
   String title;

  Item(this.icon,this.title,this.type);
}

class MinePageState extends State<MinePage> {

  List<Item> items;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      loadDatas();
    }

  void loadDatas(){
    items = <Item>[

      new Item(null , "", 2),
      new Item(null , "", 1),

      new Item(new Icon(Icons.payment) , "钱包", 0),
      new Item(null , "", 1),

      new Item(new Icon(Icons.collections) , "收藏", 0),
      new Item(new Icon(Icons.image) , "相册", 0),
      new Item(new Icon(Icons.credit_card) , "卡包", 0),
      new Item(new Icon(Icons.insert_emoticon) , "表情", 0),
      new Item(null , "", 1),

      new Item(new Icon(Icons.settings) , "设置", 0),


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
              new Icon(Icons.arrow_forward_ios,size: 16.0,)
            ],
          ),
        );
      }else if(item.type == 2) {
        return new Container(
          color: Colors.white,
          height: 88.0,
          padding: const EdgeInsets.all(10.0),
          child: new Row(
            children: <Widget>[
              new AspectRatio(
                  aspectRatio: 1.0 / 1.0,
                  child: new Container(
                    foregroundDecoration:new BoxDecoration(
                        image: new DecorationImage(
                          image: new NetworkImage("http://download.loocha.com.cn/m/uavatar/15179328/2248/3915/69c000e6-874e-4337-8ae6-2d54319c3355.jpg.jpg"),
                        ),
                        borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                    ),
                  )
              ),
              new Expanded(
                
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    new Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      child: new Text("xxxx",
                      style: new TextStyle(
                        fontSize: 16.0
                      ),
                      ),
                      
                    ),

                    new Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      child: new Text("微信号:  zdnuist",style: new TextStyle(
                        fontSize: 12.0,
                      ),),
                    )

                  ],
                ),
              ),

            new Icon(Icons.code),

            new Icon(Icons.arrow_forward_ios,size: 16.0)

            ],
          ),
        );
      }

      return new Container(
        height: 23.0,
      );


    }


}