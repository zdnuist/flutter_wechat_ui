import 'package:flutter/material.dart';
import 'search.dart';

class ContactsPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new ContactsPageState();
    }
}

class Item{
   Icon icon;
   int type;
   String title;

  Item(this.icon,this.title,this.type);
}

class ContactsPageState extends State<ContactsPage> {

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

      new Item(new Icon(Icons.person_pin) , "新的朋友", 0),
      new Item(new Icon(Icons.group) , "群聊", 0),
      new Item(new Icon(Icons.markunread) , "标签", 0),
      new Item(new Icon(Icons.group_work) , "公众号", 0),
      new Item(null , "", 1),



    ];  
  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
       return new Container(
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
          height: 68.0,
          padding: const EdgeInsets.only(left: 10.0,right: 10.0),
          child: new Row(
            children: <Widget>[
              item.icon,
              new Expanded(
                child: new Container(
                  child:Text(item.title) ,
                  padding: const EdgeInsets.only(left: 15.0),
                ) ,
              )
            ],
          ),
        );
      }else if(item.type == 2) {
        return _buildHeader();
      }

      return new Container(
        height: 23.0,
      );


    }


    Widget _buildHeader() {
      return new Container(
        margin: const EdgeInsets.only(top:10.0 , left: 10.0,right: 10.0,bottom: 10.0),
        height: 35.0,
        
        decoration: new BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
          color: Colors.white,
        ),
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new FlatButton.icon(
                onPressed: (){

                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) {
                      return new SearchPage();

                    }
                  ));
                  
                },
                icon: new Icon(
                  Icons.search,
                ),
                label: new Text(
                  "搜索",
                ),
              ),
            ),

            new Container(
              child: new IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: (){

                },
                icon: new Icon(Icons.surround_sound),
              )
            )
            

          ],
        ),
      );
    }


}