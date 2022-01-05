import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
        color: Colors.grey,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text('Main',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20)),
              RaisedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SubPage();
              })), child: new Text('Subページへ'),),
              Text('Main1',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize:20)),
              RaisedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SubPage1();
              })), child: new Text('Subページ_1へ'),),
              Container(
                margin: EdgeInsets.all(24),
                child:Text('Test', style: TextStyle(fontWeight: FontWeight.bold,fontSize:32,color: Colors.red)),
              ),
              Container(
                margin: EdgeInsets.all(24),
                child: Text('Test1',style: TextStyle(fontSize: 32,color: Colors.lightBlue)),
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 100,
                width: 1000,
                color: Colors.pink,
                margin: EdgeInsets.fromLTRB(20,20,20,20),
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Text('Container 1',style: TextStyle(color: Colors.black),),
              ),
              Container(
                height: 100,
                width: 1000,
                color: Colors.cyan,
                margin: EdgeInsets.fromLTRB(20,20,20,20),
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Text('Container 2',style: TextStyle(color: Colors.green),),
              ),
              Container(
                height: 100,
                width: 1000,
                color: Colors.green,
                margin: EdgeInsets.fromLTRB(20,20,20,20),
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Text('Container 3',style: TextStyle(color: Colors.pinkAccent),),
              ),
              Container(
        ),
        ],
      ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
        color: Colors.lightBlue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
              children: <Widget> [
                Text('Sub'),
                RaisedButton(onPressed: () => Navigator.of(context).pop(), child: new Text('トップへ戻る')),
              ]
          ),
        ),
      ),
    );
  }
}
class SubPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
        color: Colors.lightGreen,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
              children: <Widget> [
                Text('Sub1'),
                RaisedButton(onPressed: () => Navigator.of(context).pop(), child: new Text('トップへ戻る')),
              ]
          ),
        ),
      ),
    );
  }
}
