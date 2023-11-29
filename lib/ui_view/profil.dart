import 'package:flutter/material.dart';

void main() => runApp(MyProfil());

class MyProfil extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Profil',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     
     home: Profil(),
   );
 }
}
class Profil extends StatelessWidget {
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        title: Text("Tentang"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Text('Contact Person|Riski Maulana|21552011455'),
        ),
  );
  
 }
}