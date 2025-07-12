import 'package:cached_network_image/cached_network_image.dart';
import'package:flutter/material.dart';
class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Doraemon image'),
        centerTitle: true,
        backgroundColor: Colors.white54,

      ),
      body:Center(
      child:Container(
        height:200,width:300,
          child:CachedNetworkImage(imageUrl:'https://www.shutterstock.com/image-vector/cartoon-background-transparent-doraemon-nobita-600nw-2364737497.jpg',
          placeholder:(context,url) =>
              Center(child:CircularProgressIndicator()),
        errorWidget:(context,url,error) => Icon(Icons.error),

          ),


          // decoration: BoxDecoration(
          //   image:DecorationImage(image: AssetImage('assets/img.png',
          //   ),
          //       fit:BoxFit.cover,
          //   ),
          //       color:Colors.red,
          //   borderRadius: BorderRadius.circular(20),
          //   boxShadow:[
          //     BoxShadow(
          //       blurRadius: 10,color:Colors.grey,
          //
          //     )
          //   ]
          //
          //
          // )


          // child:Image.network('https://m.media-amazon.com/images/I/81jwmhvU3TL.jpg,
          // fit:BoxFit.cover,
          // ), this only cover box if you want to decorate use decoration
      )
      )

    );
  }
}
