import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Button'),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
      body:Center(
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
            TextButton(
              style:ButtonStyle(
                padding:WidgetStateProperty.all(EdgeInsets.all(30)),// you can change your text position through padding
                overlayColor:WidgetStateProperty.all(Colors.yellowAccent),// when you click button for changing color
                elevation:WidgetStateProperty.all(20),// shape the button
          backgroundColor:WidgetStateProperty.all(Colors.yellow),
      ),
              child:Text('Press me',
          style: TextStyle(fontSize:20,color:Colors.black,
          ),
      ),
        onPressed:(){},
            ),
          SizedBox(height:20),
          Container(
            height:70,width:200,
           child:ElevatedButton(
             style:ButtonStyle(
               backgroundColor:WidgetStateProperty.all(Colors.white54),
           shape:WidgetStateProperty.all(RoundedRectangleBorder(
             borderRadius:BorderRadius.circular(40),
           ),
           ),
           ),
             onPressed:(){
          print('i like you');
          },
              child:Text(
                'Press me',
                style: TextStyle(fontSize:20,color: Colors.black),
              ),
          ),
          ),
        ],
      ),
      ),
    );
  }


}



