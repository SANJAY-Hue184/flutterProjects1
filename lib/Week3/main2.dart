import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main()=> runApp( MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  String? name;
  var nameValue = "No Value";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Shared Pref'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textEditingController,
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () async {
                var prefs = await SharedPreferences.getInstance();

                name = textEditingController.text.toString();
                prefs.setString("name", name!);
                getValue();
              }, child: Text('Save')),
              SizedBox(height: 20),
              Text(nameValue),
            ],
          ),


        ),
      ),
    );
  }

  Future<void> getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString("name");
    nameValue = getName ??  "No Value";
    setState(() {

    });
  }
}

