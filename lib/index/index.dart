import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../pages/contacts.dart';
import '../pages/find.dart';
import '../pages/mine.dart';

class IndexPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new IndexPageState();
    }
}

class IndexPageState extends State<IndexPage> {

  int _currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems;
  List<StatefulWidget> pageList;
  StatefulWidget _currentPage;
  


  @override
    void initState() {
      // TODO: implement initState
      super.initState();

      bottomItems = <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            // icon: new Icon(Icons.message),
            icon: new Stack(
              children: <Widget>[
                new Icon(Icons.message),
                new Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: new Icon(
                    Icons.brightness_1,
                    size: 8.0,
                    color: Colors.redAccent,
                  ),
                )
              ],
            ),
            title: new Text("微信")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.contacts),
            title: new Text("通讯录")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text("发现")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text("我")
          ),
      ];

      pageList = <StatefulWidget>[
        new HomePage(),
        new ContactsPage(),
        new FindPage(),
        new MinePage()
      ];

      _currentPage = pageList[_currentIndex];
    }

  @override
    Widget build(BuildContext context) {
      final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
          items: bottomItems ,
          currentIndex: _currentIndex,
          fixedColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState(() {
                          _currentIndex = index;
                          _currentPage = pageList[_currentIndex];

                        });
          },
      );
      return new Scaffold(
        appBar: new AppBar(
          title: bottomItems[_currentIndex].title,
          centerTitle: true,
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.add),
              onPressed: showActions,
            )
          ],
        ),
        body:  new Center(
            child: _currentPage
        ),
        bottomNavigationBar: bottomNavigationBar,
      );
    }

    void showActions() {
      print("show actions");
    }
}