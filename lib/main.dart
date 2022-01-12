import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'BottomNavBar Code Sample';

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
        color: Colors.white,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text('Main',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20)),
              RaisedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SubPage();
              })), child: new Text('Subページへ'),),
              Text('Main2',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize:20)),
              RaisedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SubPage1();
              })), child: new Text('Subページ_2へ'),),
              Text('BottomButton',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20)),
              RaisedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyStatefulWidget();
              })), child: new Text('BottomButtonへ')),
              // Container(
              //   margin: EdgeInsets.all(24),
              //   child:Text('Test', style: TextStyle(fontWeight: FontWeight.bold,fontSize:32,color: Colors.red)),
              // ),
              // Container(
              //   margin: EdgeInsets.all(24),
              //   child: Text('Test2',style: TextStyle(fontSize: 32,color: Colors.lightBlue)),
              // ),
              Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 1000,
                    // color: Colors.pink,
                    margin: EdgeInsets.fromLTRB(20,20,20,20),
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                    child: Row (
                    children: <Widget> [
                      Container(color: Colors.red, child: Text('first')),
                      Container(color: Colors.blue, child: Text('second')),
                      Container(color: Colors.green, child: Text('third')),
                      ],
                    ),
                    // child: Text('Container 1',style: TextStyle(color: Colors.black),),
                  ),
                  Container(
                    height: 100,
                    width: 1000,
                    color: Colors.cyan,
                    margin: EdgeInsets.fromLTRB(20,20,20,20),
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                    child: Text('Container 2',style: TextStyle(color: Colors.yellow),),
                  ),
                  Container(
                    height: 100,
                    width: 1000,
                    color: Colors.green,
                    margin: EdgeInsets.fromLTRB(20,20,20,20),
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                    child: Text('Container 3',style: TextStyle(color: Colors.red),),
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
        title: new Text('Navigator',style: TextStyle(color: Colors.yellow),),
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
        title: new Text('Navigator',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
      ),
      body: new Container(
        color: Colors.lightGreen,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
              children: <Widget> [
                Text('Sub2'),
                RaisedButton(onPressed: () => Navigator.of(context).pop(), child: new Text('トップへ戻る')),
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 1000,
                      color: Colors.grey.shade200,
                      margin: EdgeInsets.fromLTRB(20,20,20,20),
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                      child: Text('Grey.shade200',style: TextStyle(color: Colors.black),),
                    ),
                    Container(
                      height: 100,
                      width: 1000,
                      color: Colors.grey.shade500,
                      margin: EdgeInsets.fromLTRB(20,20,20,20),
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                      child: Text('Grey.shade500',style: TextStyle(color: Colors.yellow),),
                    ),
                    Container(
                      height: 100,
                      width: 1000,
                      color: Colors.grey.shade800,
                      margin: EdgeInsets.fromLTRB(20,20,20,20),
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                      child: Text('Grey.shade800',style: TextStyle(color: Colors.red),),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: Text(
          "indexNum: $_selectedIndex",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            activeIcon: Icon(Icons.book_online),
            label: 'Book',
            tooltip: "This is a Book Page",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            activeIcon: Icon(Icons.business_center),
            label: 'Business',
            tooltip: "This is a Business Page",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            activeIcon: Icon(Icons.school_outlined),
            label: 'School',
            tooltip: "This is a School Page",
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            activeIcon: Icon(Icons.settings_accessibility),
            label: 'Settings',
            tooltip: "This is a Settings Page",
            backgroundColor: Colors.pink,
          ),
        ],

        type: BottomNavigationBarType.shifting,
        // ここで色を設定していても、shiftingにしているので
        // Itemの方のbackgroundColorが勝ちます。
        backgroundColor: Colors.red,
        enableFeedback: true,
        // IconTheme系統の値が優先されます。
        iconSize: 18,
        // 横向きレイアウトは省略します。
        // landscapeLayout: 省略
        selectedFontSize: 20,
        selectedIconTheme: const IconThemeData(size: 30, color: Colors.green),
        selectedLabelStyle: const TextStyle(color: Colors.red),
        // ちなみに、LabelStyleとItemColorの両方を選択した場合、ItemColorが勝ちます。
        selectedItemColor: Colors.black,
        unselectedFontSize: 15,
        unselectedIconTheme: const IconThemeData(size: 25, color: Colors.white),
        unselectedLabelStyle: const TextStyle(color: Colors.purple),
        // IconTheme系統の値が優先されるのでこの値は適応されません。
        unselectedItemColor: Colors.red,
      ),
    );
  }
}
