import 'dart:async';

import 'package:flutter/material.dart';


void main()=> runApp( MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamController<String>streamController=StreamController<String>();
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Streams',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.lightBlue,
            centerTitle: true,
          ),
          body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StreamBuilder<String>(stream: streamController.stream,
                    builder:(context,snapshot){
                      if(snapshot.hasData){
                        return Text(snapshot.data ?? 'null data',
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                        );
                      }else{
                        return Text('No Data',
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        );
                      }

                    }
                ),


                SizedBox(height: 20),
                SizedBox(width: 200,child:TextField(
                  controller: textEditingController,
                )),
                SizedBox(height:20),
                ElevatedButton(onPressed: (){
                  streamController.add(textEditingController.text);
                }, child: Text('Done')),
              ],
            ),
          )
      ),
    );
  }
}

