import 'package:flutter/material.dart';
import 'package:projects/myprojects/quiz.dart';
import 'package:projects/myprojects/profile.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
      ),

      backgroundColor: Colors.brown[300],


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Center(

      child:Container(
            alignment: Alignment.center,
            height: 100,
            width: 350,
            decoration:BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Welcome to Quizify 🧠',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
         ),


          SizedBox(height: 30),


          Container(
            padding: EdgeInsets.all(18),
            height: 70,
            width: double.infinity,
            decoration:BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10) ,
    ),
            alignment: Alignment.center,
            child: Text(
              'Time to Flex Your Brainpower 💡',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,

                color: Colors.brown,
              ),

            ),
          ),
      SizedBox(height:20),
     Center( child:Container(
        width:380,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      Image.asset('assets/question2.png',
        height:160,width:100,
      ),
            Image.asset('assets/right2.png',
              height:120,width:70,
            ),
          Image.asset('assets/wrong2.png',
            height: 140,width:90,
          ),
    ],
        ),
      ),
     ),
          SizedBox(height:30),

          Container(
            height:90,width:300,
            child:ElevatedButton(
              style:ButtonStyle(
                backgroundColor:WidgetStateProperty.all(Colors.white54),
                overlayColor: WidgetStateProperty.all(Colors.teal),
                shape:WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
                ),
              ),
              onPressed:(){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Quiz()),
             );
              },
              child:Text(
                '⏳ Start Quiz',
                style: TextStyle(fontSize:40,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            height:90,width:300,
            child:ElevatedButton(
              style:ButtonStyle(
                backgroundColor:WidgetStateProperty.all(Colors.white54),
                overlayColor: WidgetStateProperty.all(Colors.teal),
                shape:WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
                ),
              ),
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
              },
              child:Text(
                '👤 My Profile',
                style: TextStyle(fontSize:40,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
          ),



        ],
      ),








    );
  }
}
