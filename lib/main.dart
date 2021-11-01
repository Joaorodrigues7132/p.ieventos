import 'package:flutter/material.dart';
import 'material.dart';
import 'modal.dart';
import 'home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title:"Flutter WEB",
      debugShowCheckedModeBanner: false,
    
      home: MyHomePage(
        title: 'Teste',
      ),
    );
  }
}
