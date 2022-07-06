import 'package:flutter/material.dart';
import 'package:share/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Practice",
      home:  LoginPage(),
      
    );
  }
}