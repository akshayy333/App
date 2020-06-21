import 'package:flutter/material.dart';

void main() {
var home=Home();
var users=Userspage(); 
runApp(MaterialApp(
  initialRoute:'/',
  routes:{
    '/':(context)=>home,
    '/users':(context)=>users,
    
  },
));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
  appBar: AppBar(
  title: Text('Auction',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
  centerTitle: true,
  backgroundColor: Colors.pinkAccent,
  ),
  body:
SizedBox(width: 1000,height: 100,
    child:RaisedButton(
      child: Text('Products',style: TextStyle(fontWeight:FontWeight.bold),),
      onPressed: (){
        Navigator.pushNamed(context, '/users');
      },
      ),
  ),
    );
  }
}
class Userspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
  appBar: AppBar(
  title: Text('Products list',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
  centerTitle: true,
  backgroundColor: Colors.pinkAccent,
  ),
      body: Padding(padding: EdgeInsets.fromLTRB(40,30,50,60),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('1.Jacket',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('2.Furnitures',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('3.Computer',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('4.Sports equipment',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('5.Cameras',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('6.MobilePhones',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('7.Drinks',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('8.Electronics',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('9.Houses',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
          Text('10.Food items',style:TextStyle(fontWeight:FontWeight.bold,
          color:Colors.black,
          fontSize:22),
          ),
        ],
        )
        ),
    );
  }
}