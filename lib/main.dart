import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Stateful',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Stateful'),
//         ),
//         body: Center(
//           child: ClickGood(),
//         ),
//       ),
//     );
//   }
// }
//
// class ClickGood extends StatefulWidget {
//   @override
//   _ClickGoodState createState() => _ClickGoodState();
// }
//
// class _ClickGoodState extends State<ClickGood> {
//   bool _active = false;
//
//   void _handleTap() {
//     setState(() {
//       _active = !_active;
//     });
//   }
//
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: _handleTap,
//         child: Container(
//           child: Column(
//               children: <Widget>[
//                 Container(
//                   child: Center(
//                     child: new Icon(
//                       Icons.thumb_up,
//                       color: _active ? Colors.orange[700] : Colors.grey[500],
//                       size: 100.0,
//                     ),
//                   ),
//                   width: 200.0,
//                   height: 200.0,
//                 ),
//                 Container(
//                   child: Center(
//                     child: Text(
//                       _active ? 'Active' : 'Inactive',
//                       style: TextStyle(fontSize: 32.0, color: Colors.white),
//                     ),
//                   ),
//                   width: 200.0,
//                   height: 50.0,
//                   decoration: BoxDecoration(
//                     color: _active ? Colors.orange[700] : Colors.grey[600],
//                   ),
//                 ),
//               ]
//           ),
//         )
//     );
//   }
// }
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
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text('Main'),
              RaisedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SubPage();
              })), child: new Text('Subページへ'),)
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
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
              children: <Widget> [
                Text('Sub1'),
                RaisedButton(onPressed: () => Navigator.of(context).pop(), child: new Text('戻る')),
              ]
          ),
        ),
      ),
    );
  }
}

