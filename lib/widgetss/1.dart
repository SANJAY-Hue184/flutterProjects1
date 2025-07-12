import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Scaffold (
    appBar: AppBar(
      title: Text("My first app"),
      centerTitle:true,
      backgroundColor:Colors.deepPurple[300],
      leading : IconButton(
        onPressed:(){
          // do something
        },
        icon:Icon(Icons.menu),
      ),
      actions: [
        IconButton(
          onPressed:(){
            // do something
          },
          icon: Icon(Icons.share),
        ),
      ],
    ),
    body:Center(
   child: Text(
      'The Scaffoid Widget',
      style: TextStyle(
        fontSize : 28,
        fontWeight:FontWeight.bold,

      ),
    ),
),
    floatingActionButton:FloatingActionButton(
      child:Text('Click'),
      onPressed:(){},
    ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.green,
      selectedItemColor: Colors.white,
      unselectedItemColor:Colors.white60,
      items:<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label:'Home',
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.settings),
          label:'settings',
        ),
      ],
    ),
  ),
),
);