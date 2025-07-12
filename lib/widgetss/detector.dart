import 'package:flutter/material.dart';

class Detector extends StatefulWidget {
  const Detector({super.key});

  @override
  _DetectorState createState() => _DetectorState();
}

class _DetectorState extends State<Detector> {
  int numberOfTimes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detector"),
        backgroundColor: Colors.white54,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped $numberOfTimes times',
              style: TextStyle(
                fontSize: 30,
                color: Colors.brown,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  numberOfTimes++;
                });
              },



              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.amberAccent,

                child: Text(
                  'TAP HERE',
                  style: TextStyle(fontSize: 30,color:Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
