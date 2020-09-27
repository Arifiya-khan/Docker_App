

import 'package:flutter/material.dart';
import 'package:mystateful/home.dart';
import 'package:mystateful/profile.dart';

void main(){
runApp(MaterialApp(
   theme: ThemeData.dark(),
   initialRoute : "/",
   routes : {

     "/": (context)=> MyHome(),
    "/profile":(context)=> MyProfile(),
     
        }
     
     
     ));
} 
