import 'package:flutter/material.dart';
import 'models/global.dart';
import 'UI/Home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Todo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
          color: Colors.yellow,
          home: SafeArea(
              child: DefaultTabController(
                length: 3,
                child: new Scaffold(
                  body: Stack(
                    children: <Widget>[
                      TabBarView(
                        children: [
                          HomePage(),
                          new Container(color: Colors.orange,),
                          new Container(
                            color: Colors.lightGreen,
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 50),
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                          color: panelColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Task", style: intrayTitleStyle,),
                            Container()
                          ],
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 80,
                        margin: EdgeInsets.only(top: 128, left: MediaQuery.of(context).size.width*0.5 - 40),
                        child: FloatingActionButton(
                          child: Icon(Icons.add, size: 65,),
                          backgroundColor: Color(0xFF2573D5),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  appBar: AppBar(
                    elevation: 0,
                    title: new TabBar(
                      tabs: [
                        Tab(
                          icon: new Icon(Icons.home),
                        ),
                        Tab(
                          icon: new Icon(Icons.rss_feed),
                        ),
                        Tab(
                          icon: new Icon(Icons.perm_identity),
                        ),
                      ],
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorPadding: EdgeInsets.all(5.0),
                      indicatorColor: Colors.transparent,
                    ),
                    backgroundColor: panelColor,
                  ),
                  backgroundColor: Colors.white,

                ),
              ),
          ),
        );
  }
}
