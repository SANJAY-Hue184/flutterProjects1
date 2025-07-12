import'package:flutter/material.dart';

class RowCols extends StatelessWidget {
  const RowCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
appBar:AppBar(
  title:Text('Rows and columns',
    style: TextStyle(
      fontWeight:FontWeight.bold,
     fontStyle : FontStyle.normal,
  ),

),
  centerTitle: true,


),
      body: Container(
       height:200,//h
        width:w, //w
        color: Colors.white24,
  //       child:Wrap( //Row(
  //         // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
  //          // crossAxisAlignment:CrossAxisAlignment.end,
  //         direction:Axis.vertical,
  //           alignment: WrapAlignment.start,
  //           children:[
  //         Container(height:60,width:60,color :Colors.red),
  //       Container(height:60,width:60,color :Colors.blue),
  //       Container(height:60,width:60,color :Colors.green),
  //       Container(height:60,width:60,color :Colors.purple),
  //       Container(height:60,width:60,color :Colors.pink),
  // ]
  //
        //       )
     child:Wrap(//column
         // mainAxisAlignment: MainAxisAlignment.start,
         // crossAxisAlignment:CrossAxisAlignment.center,
       direction: Axis.vertical,
         children:[
       Container(height:60,width:60,color :Colors.red),
              Container(height:60,width:60,color :Colors.blue),
              Container(height:60,width:60,color :Colors.green),
             Container(height:60,width:60,color :Colors.purple),
             Container(height:60,width:60,color :Colors.pink),
     ])
      ),

    );
  }
}
