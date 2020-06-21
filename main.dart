
import 'dart:io';
import 'package:flutter/material.dart';

void main() {
var home=Home();
var exitbutton=Exit();
var back=Back();
runApp(MaterialApp(
  initialRoute:'/',
  routes:{
    '/':(context)=>home,
    '/exitbutton':(context)=>exitbutton,
    '/back':(context)=>back,
  },
));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
  appBar: AppBar(
  title: Text('Maximl',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
  centerTitle: true,
  backgroundColor: Colors.orangeAccent,
  ),
  body: Center(
    child: RaisedButton(
      color: Colors.orangeAccent,
      child: Text('EXIT',style: TextStyle(backgroundColor: Colors.orangeAccent)),
      onPressed: (){
        Navigator.pushNamed(context,'/exitbutton');
      },
       ),
  ),
   );
  }
}
class Exit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit an App'),
            actions: <Widget>[
              FlatButton(
                color: Colors.orangeAccent,
                onPressed: () => Navigator.pushNamed(context, '/back'),
                child: Text('No'),
              ),
              FlatButton(
                color: Colors.orangeAccent,
                onPressed: () => exit(0),
                                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }
}
class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
  appBar: AppBar(
  title: Text('Maximl',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
  centerTitle: true,
  backgroundColor: Colors.orangeAccent,
  ),
  body: Center(
    child: RaisedButton(
      color: Colors.orangeAccent,
      child: Text('EXIT',style: TextStyle(backgroundColor: Colors.orangeAccent)),
      onPressed: (){
        Navigator.pushNamed(context,'/exitbutton');
      },
       ),
  ),
   );
  }
}
