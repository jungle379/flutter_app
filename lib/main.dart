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
        color: Colors.green,
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
              })), child: new Text('Subページ1へ'),),
              Text('hoge', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
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
        color: Colors.blue,
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
