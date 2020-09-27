import 'package:flutter/material.dart';


class MyHome extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData.light(),
     home: Scaffold(
       appBar: AppBar(
         title: Text('                               Home'),
         flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.white,
              Colors.grey,
              Colors.blue,
            ])          
         ),        
     ),      
         backgroundColor: Colors.blueGrey,
       ),

       body: Container(
         width: double.infinity,
         height: double.infinity,
         
         decoration: BoxDecoration(
           image: DecorationImage(
            
             image: AssetImage('assets/images/docker4.png') ,
             fit: BoxFit.cover,
           ) 


         ),
        
    
             
         
         child: Align(
           alignment: Alignment.bottomCenter,
           
           child:RaisedButton(
             shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.green)),
            
          
          onPressed: (){
           print("Next page");
           Navigator.pushNamed(context, "/Profile");
         

        },

        child: Text('Get started with Docker'),),)
        
        
             
         
       )
       )
   );
  
   
 }
}