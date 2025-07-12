import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouter, GoRoute;

import '../../pages/home.dart';
import '../../pages/profile.dart';
import '../../pages/about.dart';
import '../../pages/contact_us.dart';


class MyAppRouter{
  GoRouter router = GoRouter(
 routes: [
   GoRoute(
     name: 'home',
     path: '/',
       pageBuilder :(context,state){
       return MaterialPage(child:Home());
},
   ),
   GoRoute(
     name: 'profile',
     path: '/profile',
     pageBuilder :(context,state){
       return MaterialPage(child:Profile());
     },
   ),GoRoute(
     name: 'about',
     path: '/about',
     pageBuilder :(context,state){
       return MaterialPage(child:About());
     },
   ),
   GoRoute(
     name: 'contact_us',
     path: '/contact_us',
     pageBuilder :(context,state){
       return MaterialPage(child:Contact_Us());
     },
   ),

 ],
  );
}