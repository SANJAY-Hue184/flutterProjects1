import 'package:flutter/material.dart';

class StacksWidge extends StatelessWidget {
  const StacksWidge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white24,
        title:Text('Stack'),
        centerTitle: true,
      ),
      // body: Container(
        // color: Colors.blueGrey,
        // child:Center(
        //   child:Stack(
        //     // children:[
        //     //    Center(
        //     //  child:Container(height:300,width:300,color:Colors.redAccent)),
        //     //   Center(
        //     //  child: Container(height:150,width:150,color: Colors.deepPurple)),
        //     //   Center(
        //     //     child: Container(height:50,width:50,color:Colors.greenAccent)),
        //       children:[
        //         Positioned(bottom:15,left:30,
        //       child:Container(height:300,width:300,color:Colors.redAccent)),
        //        Positioned(top:50,right:25,
        //      child: Container(height:150,width:150,color: Colors.deepPurple)),
        //        Positioned(top:60,left:22,
        //         child: Container(height:50,width:50,color:Colors.greenAccent)),
        //      ],
        //
        //   )
        // )
        body:Stack(
          children: [
           Positioned(
             child:Container(
              height:300,
               width: MediaQuery.of(context).size.width,
               decoration:BoxDecoration(
                 color: Colors.red,
                 image:DecorationImage(
                   image:AssetImage('assets/dowload.jpg'),
                   fit:BoxFit.cover,
                 ),
               ),
             ),
           ),
                   Positioned(
                     left:20,top:20,
                     child: Container(
                       height:50,width:50,color: Colors.yellow,
                     ),
                   ),
            Align(
              alignment:Alignment.bottomCenter,
              child:Container(
                height:50,width:50,color: Colors.yellow,
              )
            )
          ],
        )

    );
  }
}
