import 'package:flutter/material.dart';
import 'package:projects/week3project/score3.dart';

import 'question3.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _currentIndex = 0;
  int _score =0;
  void _answerQuestion(String selectedOption) {
    if (selectedOption == questions[_currentIndex]['answer']) {
      _score++;
    }

    if (_currentIndex < questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => Results(score: _score, total: questions.length),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[_currentIndex];
    final options =currentquestion['options'] as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ',
          style: TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,

          ),),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      backgroundColor:Colors.brown[300],
      body:
      Container(
        child: Column(
          children: [
            Container(
              height: 50,width: double.infinity,
            ),

            Container(
              height: 60,width: 100,
              decoration: BoxDecoration(
                color:Colors.brown[100],
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child:Text('Q No: ${_currentIndex+1}',
                style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold,
                ),),
            ),

            SizedBox(height: 30),

            Container(
              alignment: Alignment.center,
              height: 200, width: 380,
              color: Colors.white10,
              child: Text(currentquestion['question'] as String,
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30,color: Colors.blueGrey,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height:70,width:190,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor:WidgetStateProperty.all(Colors.white54),
                  overlayColor: WidgetStateProperty.all(Colors.teal),
                  shape:WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10),
                  ),
                  ),
                ),
                onPressed:() =>_answerQuestion(options[0]),



                child:Text(options[0],

                  style: TextStyle(fontSize:30,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height:70,width:190,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor:WidgetStateProperty.all(Colors.white54),
                  overlayColor: WidgetStateProperty.all(Colors.teal),
                  shape:WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10),
                  ),
                  ),
                ),
                onPressed:() =>_answerQuestion(options[1]),



                child:Text(options[1],

                  style: TextStyle(fontSize:30,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),

            SizedBox(height: 10),
            Container(
              height:70,width:190,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor:WidgetStateProperty.all(Colors.white54),
                  overlayColor: WidgetStateProperty.all(Colors.teal),
                  shape:WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10),
                  ),
                  ),
                ),
                onPressed:() =>_answerQuestion(options[2]),



                child:Text(options[2],

                  style: TextStyle(fontSize:30,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),

            SizedBox(height: 10),
            Container(
              height:70,width:190,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor:WidgetStateProperty.all(Colors.white54),
                  overlayColor: WidgetStateProperty.all(Colors.teal),
                  shape:WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10),
                  ),
                  ),
                ),
                onPressed:() =>_answerQuestion(options[3]),



                child:Text(options[3],

                  style: TextStyle(fontSize:30,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),




          ],

        ),
      ),

    );
  }
}
