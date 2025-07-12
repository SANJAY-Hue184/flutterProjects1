import 'package:flutter/material.dart';
class SnackWidget extends StatelessWidget {
  const SnackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:Text('SnackBar'),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body:Container(
        child:Center(
          child:ElevatedButton(
            onPressed:(){
              final snackbar = SnackBar(
                action:SnackBarAction(
                  label:'Undo',
                  textColor :Colors.blue,
                  onPressed:(){},
                ),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                  duration:const Duration(milliseconds: 1000),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor:Colors.red,
                  content: Text('This is a error'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child:Text('Show SnackBar'),
          ),
        ),
      ),
    );
  }
}
