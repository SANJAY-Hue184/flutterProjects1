import 'package:flutter/material.dart';
class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('DropDown List',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
      ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            height: 100,width:MediaQuery.of(context).size.width,
            color: Colors.white54,margin:EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}
