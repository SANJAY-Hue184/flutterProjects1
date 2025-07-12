import 'package:flutter/material.dart';
import'package:projects/square.dart';
import'package:projects/widgetss/circle.dart';

class Listview extends StatelessWidget {


final List _posts =[
  'post 1',
  'post 2',
  'post 3',
  'post 4',
  'post 5',
  'post 6',
  'post 7',

];
final List _stories=[
  'stories 1',
  'stories 2',
      'stories 3',
      'stories 4',
      'stories 5',
      'stories 6',
      'stories 7',

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[

          Container(
            height:150,
            child: ListView.builder(
               itemCount:_stories.length,
               scrollDirection:Axis.horizontal,
               itemBuilder: (context,index){
                return MyCircle(child: _stories[index],
                );
               },
                ),
          ),

              Expanded(

     child: ListView.builder(
        itemCount :_posts.length,
        itemBuilder:(context,index) {
          return MySquare(
            child:_posts[index],
          );

        }
      ),
              ),
          ],
    ),

      );
      // body: ListView(
      //    // physics: NeverScrollableScrollPhysics(),
      //   // children: [
      //   //   MySquare(),// this method fix the size of column
      //   //   MySquare(),
      //   //   MySquare(),
      //   //   MySquare(),
      //   //   MySquare(),
      //   //   MySquare(),
      //   //   MySquare(),
      //   //
      //   //   ],
      // )


  }
}
