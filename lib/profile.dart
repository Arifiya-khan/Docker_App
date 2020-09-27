import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

String cmd;

 

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

var webdata;
web(cmd) async {
  var url = "http://192.168.43.230/cgi-bin/docker.py?x=${cmd}";
  var response = await http.get(url);
  setState((){

   webdata =response.body;
  });
  print(webdata);

 }
@override
  Widget build(BuildContext context) {
  
   return MaterialApp(
     theme:ThemeData.fallback(),
  
     home: Scaffold(
       appBar: AppBar(
         title: Text('                        Docker App'),
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.white,
              Colors.grey,
              Colors.white,
            ])      
        
       ),)),

       
         body: Center(
           
           child:Container(
            
           child: Column(
             children:<Widget> [
              Container(
                width: 400,
                height: 350,
                decoration:BoxDecoration(
                  image:DecorationImage(
                    
                    image: AssetImage('assets/images/design.png') ,
                    fit: BoxFit.cover,
                    
                    )


                )
              ),

              TextField(onChanged: (value){
                cmd=value;
              },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                   
                   border:OutlineInputBorder(),
                   hintText: "Enter OS name" ,
                   prefixIcon:Icon(Icons.code),


                ),


              ),
              FlatButton(
                onPressed:(){
                web(cmd);
              },
              child:Text(webdata?? "Click To See An Output",style: TextStyle(
    color: Colors.blueGrey,fontSize: 20,
  ),),
              
  ),


             ],

           ),
         ),
       

       
   )
   ),
   );
     
  }
}