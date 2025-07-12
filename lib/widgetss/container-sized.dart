import'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     title: Text('Container sized box'),
    centerTitle: true,
   backgroundColor: Colors.white54,

   ),

   body:Center(
child:Container(

  height:100,
  width:100,
decoration:BoxDecoration(
  // shape: BoxShape.circle,
  color:Colors.white30,
// borderRadius:BorderRadius.circular(20),
//   // if you want to only one corner get circular
  borderRadius:BorderRadius.only(topLeft: Radius.circular(20),
      bottomRight: Radius.circular(20)),
      boxShadow : [
        BoxShadow(
          blurRadius:20,spreadRadius:5,color:Colors.black,
        ),
      ],
),
  child :Center(child:Text(
    'hello',
    style:TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ))),

),
   ),



    );
  }
}
