import 'package:flutter/material.dart';
import 'package:project_uts_mobile/ui_view/login.dart';
import 'package:project_uts_mobile/ui_view/signup.dart';
import 'package:project_uts_mobile/ui_view/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'APLIKASI BUMN',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: SplashScreen(),
   );
 }
}
class HomePage extends StatelessWidget {
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.blue,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Icon(Icons.doorbell, color: Colors.white, size: 45,),
           Text("BUMN",
               style: TextStyle(color: Colors.white, fontSize: 22)),
             
           SizedBox(height: 200,),
           Text("Selamat Datang",
               style: TextStyle(color: Colors.white, fontSize: 22)),
           SizedBox(height: 6,),
           Text("Login Terlebih Dahulu!",
             style: TextStyle(color: Colors.white, fontSize: 15),),
           SizedBox(height: 6,),
           MaterialButton(
             minWidth: 210,
             color: Colors.yellow,
             textColor: Colors.white,
             child: Text("Sign Up",
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
             },
           ),
           TextButton(
             child: Text("Log In", style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 18),),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             },
           )
         ],
       ),
     ),
   );
 }
}