import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new HomePageState();
    }
}

class Message {
   const Message({
    @required this.avatar,
    @required this.name,
    this.desc,
    this.time
  }) : assert(avatar != null),
       assert(name != null);
  final String avatar;
  final String name;
  final String desc;
  final int time;
}

class HomePageState extends State<HomePage> {


  final _messages = <Message>[];


  @override
    void initState() {
      // TODO: implement initState
      super.initState();
    }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return _buildMessage();
    }


    Widget _buildMessage(){
      return new ListView.builder(

        itemBuilder: (context , i) {
          if(i.isOdd) return new Divider();

          final index = i ~/ 2;
          
          if(index <= 10){
          _messages.add(new Message(
            avatar: "http://t1.loocha.cn:8080/m/uavatar/15245856/1850/7602/689ef0a9-c70c-41ff-a94b-bce84a29b419.jpg.jpg",
            name: "反馈",
            desc: "小明: 填吧",
            time: 1524635593042
          ));
          }else{
            return null;
          }

          return _buildRow(_messages[index]);

        },
      );
    }

    Widget _buildRow(Message message) {

      DateTime time = new DateTime.fromMillisecondsSinceEpoch(message.time);

      String showTime = "${time.month}-${time.day} ${time.hour}:${time.minute}";

      return new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[
            new Image.network(message.avatar , width: 48.0, height: 48.0,),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(top:10.0,bottom: 5.0,left: 15.0),
                    child: new Text(message.name),

                  ),
                  new Container(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: new Text(message.desc),

                  ),

                ],
              ),

            ),

            new Container(
              child: new Text(showTime) ,
              padding: const EdgeInsets.only(bottom: 20.0)
            )
            
          ],

        ),
      );
    }

}