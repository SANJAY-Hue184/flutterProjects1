import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to My Profile',
        style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,
        ),),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      backgroundColor: Colors.brown[300],
      body: Center(
        child: Column(
          children: [
            Container(
              height: 80,width:double.infinity,
            ),
            Container(
              height:620,width:350,color:Colors.white70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 15,width:350,
                  ),
                  CircleAvatar(
                    radius: 60,backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/028/627/081/small_2x/watercolor-anime-character-high-quality-illustration-vector-background-photo.jpg'),

                  ),
                  Container(
                    height: 20,width: 350,
                    child: Text('Edit image',
                    style: TextStyle(fontSize: 12,color:Colors.black,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 30),
                  
                  
                  
                  
                  Container(height:100,width: 300,

                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(14),
                       height:100, width:70,
                          color: Colors.white12,
                        child: Text('👤',
                        style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                        textAlign:TextAlign.center),
                      ),
                      Container(
                        padding: EdgeInsets.all(25),
                        height: 100,
                        color: Colors.brown[200],
                        width: 230,
                        child: Text('Sanjay Saini',
                            style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),
                            textAlign:TextAlign.center,
                        ),
                      ),
                      
                    ],
                  ),
                  ),
                  SizedBox(height: 30),


                  Container(height:100,width: 300,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(14),
                          height:100, width:70,
                          color: Colors.white12,
                          child: Text('📞',
                              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                              textAlign:TextAlign.center),
                        ),
                        Container(

                          height: 100,
                          color: Colors.brown[200],
                          width: 230,
                          child: Center(

                            child: Text('+91 7877783454',
                              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                            textAlign:TextAlign.end ,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 30),


                  Container(height:100,width: 300,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(14),
                          height:100, width:70,
                          color: Colors.white12,
                          child: Text('✉',
                              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                              textAlign:TextAlign.center),
                        ),
                        Center(
                         child:Container(
                          padding: EdgeInsets.all(15),
                          height: 100,
                          color: Colors.brown[200],
                          width: 230,
                          child:Center(
                          child: Text('sanjay18@gmail.com',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),
                        ),

                      ],
                    ),
                  )




                ],
              ),
            )
          ],
        ),
      ),

    );

  }
}

