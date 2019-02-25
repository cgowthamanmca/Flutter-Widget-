import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;

  void increment() {
    setState(() {
      count = count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //primary color used for only toolbar and above colour
      //acent color used for button like this
      theme: new ThemeData(
          primaryColor: Colors.deepPurple, accentColor: Colors.grey),
      home: Scaffold(
        drawer: Drawer(),
        //endDrawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child: Icon(Icons.plus_one),
        ),
        appBar: AppBar(
          title: Text("Gowthaman"),
          centerTitle: true,
          elevation: 10.0,
          brightness: Brightness.light,
          //leading: Text("tets",style:TextStyle(color: Colors.indigo),),
          actions: <Widget>[
            Icon(Icons.plus_one), //mulitiple Widget like setting
            Icon(Icons.pool), //mulitiple Widget like setting
            Icon(Icons.pregnant_woman) //mulitiple Widget like setting
          ],
        ),
        body: Center(
            child: Text(
          "count " + count.toString(),
          style: new TextStyle(fontSize: 20.0),
        )),
      ),
    );
  }
}
