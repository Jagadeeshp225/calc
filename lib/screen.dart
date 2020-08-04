import 'package:flutter/material.dart';
class Screen1 extends StatefulWidget{
  _Screen1 createState() => _Screen1();
}
class _Screen1 extends State<Screen1>
{int a;
int b;
String res;
String oper;
String display="";
  void clicked(String mjj){
    if(mjj=='C'){
      a=0;
      b=0;
      res="";
      display="";
    }
    else if(mjj=='+' || mjj=='-' || mjj=='X' || mjj=='/'){
      a=int.parse(display);
      res="";
      oper=mjj;
      }
      else if(mjj =='='){
        b=int.parse(display);
        if(oper =='+'){
          res=(a+b).toString();
        }
        if(oper=='-'){
          res=(a-b).toString();
        }
        if(oper=='X'){
          res=(a*b).toString();
        }
        if(oper=='/'){
          res=(a~/b).toString();
        }
      }
      else{
        res=int.parse(display+mjj).toString();
      }
      setState(() {
        display=res;
      });

  }
  Widget button(String mg){
    return Expanded(
      child:OutlineButton(padding:EdgeInsets.all(25.0),
      onPressed: () {
      clicked(mg);
      },
      child:Text('$mg',
      style:TextStyle(fontSize: 24.0),
      ),),
    );
    
  }
  build(context){
    return Scaffold(
      appBar: AppBar(title:Text('Calculator'),
      centerTitle: true,
      ),
      body: 
      Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
            child:Container(
              padding:EdgeInsets.all(20.0),
              alignment:Alignment.bottomRight,
              child:Text('$display',
              style:TextStyle(fontSize: 25.0),),
            ),
            
            ),
            Row(children: <Widget>[
              button('1'),
              button('2'),
              button('3'),
              button('-'),
            ],),
            Row(children: <Widget>[
              button('4'),
              button('5'),
              button('6'),
              button('+'),
            ],),
            Row(children: <Widget>[
              button('7'),
              button('8'),
              button('9'),
              button('X'),
            ],),
            Row(children: <Widget>[
              button('C'),
              button('0'),
              button('='),
              button('/'),
            ],),
          ],),
      ),);

      
  }
}