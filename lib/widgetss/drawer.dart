import 'package:flutter/material.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: Drawer(
            child:Container(
            color:Theme.of(context).primaryColor,
             child: ListView(
               children: [
                 DrawerHeader(
                   padding: EdgeInsets.zero,
                     child: Container(
                       color:Colors.indigo,
                       child:Row(
                         children: [
                           CircleAvatar(radius:40,
                           backgroundImage:NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6dfc72b9-8c86-438a-aada-8d3530e13a68/d2c9cgs-69217879-a8d4-438a-b98d-baa29baf98d8.jpg/v1/fill/w_900,h_1126,q_75,strp/this_random_guy_by_inxonic_d2c9cgs-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzZkZmM3MmI5LThjODYtNDM4YS1hYWRhLThkMzUzMGUxM2E2OFwvZDJjOWNncy02OTIxNzg3OS1hOGQ0LTQzOGEtYjk4ZC1iYWEyOWJhZjk4ZDguanBnIiwiaGVpZ2h0IjoiPD0xMTI2Iiwid2lkdGgiOiI8PTkwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS53YXRlcm1hcmsiXSwid21rIjp7InBhdGgiOiJcL3dtXC82ZGZjNzJiOS04Yzg2LTQzOGEtYWFkYS04ZDM1MzBlMTNhNjhcL2lueG9uaWMtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.eO_cqHnkEl53GvnfoM3SJObnwnE_ijxB13-2imYECMk'),
                       ), SizedBox(width:10),
                          Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start
                            ,
                            children: [
                            Text('Sanjay Saini'),
                              Text('sanjaysaini18@gmail.com'),
                            ],
                          )

                         ],
                       )
                     )
                 ),
                 ListTile(
                   leading:Icon(Icons.folder),
                   title:Text('My file'),
                 ),
                 ListTile(
                   leading:Icon(Icons.group),
                   title:Text('Shared with me'),
                 ),
                 ListTile(
                   leading:Icon(Icons.star),
                   title:Text('starred'),
                 ),
                 ListTile(
                   leading:Icon(Icons.delete),
                   title:Text('Trash'),
                 ),
                 ListTile(
                   leading:Icon(Icons.upload),
                   title:Text('Uploads'),
                 ),
                 Divider(),



                 ListTile(
                   leading:Icon(Icons.share),
                   title:Text('Share'),
                 ),
                 ListTile(
                   leading:Icon(Icons.logout),
                   title:Text('Logout'),
                 ),





               ],
            )
            ),
          ),
        appBar: AppBar(
          title: Text('Drawer Widget'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Center(
        child:Container(
          height:50,width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white54,

          ),
          child: Center(
            child: Text('Hey there',
            style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,
            ),
          ),
          ),
        ),
        )
    );
  }
}
