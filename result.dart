import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int score;
  final int total;

  const Results ({super.key, required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    double percentage = (score / total) * 100;

    return Scaffold(
      appBar: AppBar(
        title:  Text("Quiz Result",
        style: TextStyle(
            fontWeight: FontWeight.bold,fontSize:25,color:Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.brown[300],
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                'Your Score',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black26),
              ),
               SizedBox(height: 30),
              Text(
                '$score / $total',
                style: TextStyle(fontSize: 40, color: Colors.white70),
              ),
               SizedBox(height: 15),
              Text(
                '${percentage.toStringAsFixed(1)}%',
                style:  TextStyle(fontSize: 30, color: Colors.brown[600]),
              ),
               SizedBox(height: 40),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:WidgetStateProperty.all(Colors.white54),
                  overlayColor: WidgetStateProperty.all(Colors.teal),
                  shape:WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10),
                  ),
                  ),
                ),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child:  Text('Go Back to Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 25,color:Colors.black12,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
