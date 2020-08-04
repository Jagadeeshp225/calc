import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  _Homepage createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Caulator'),
        centerTitle:true,
      ),
      body:
      Center(
         child:Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Expanded(child:Container(
            alignment: Alignment.topCenter,
            child:Text('Screen 1: Caculator',
            style:TextStyle(fontSize: 25.0),),
          ),
          ),
          Text('Home Screen',
          style:TextStyle(fontSize: 25.0),),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen1()),
              );
            },
            child: Text('Screen 1',
            style:TextStyle(fontSize: 25.0),),
           color:Colors.orange[900],
          ),
        ],
      ),
    ),);
  }
}
