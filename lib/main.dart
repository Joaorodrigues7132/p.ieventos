import 'package:flutter/material.dart';

import 'material.dart';

//import 'package:flutter_pi_/responsividade_media_query.dart';
//import 'package:flutter_pi_/responsividade_row_col.dart';
//import 'package:flutter_pi_/responsividade_wrap.dart';
//import 'package:flutter_pi_/curriculoWeb.dart';
//import 'package:flutter_pi_/curriculo_web_2.0.dart';
//import 'package:flutter_pi_/loja_Virtual.dart';
//import 'package:flutter_pi_/eventos_sandro.dart';
import 'modal.dart';
import 'home_page.dart';
/*void main(){
  runApp(const MaterialApp(
    title:"Flutter WEB",
    debugShowCheckedModeBanner: false,
    //home: ResponsividadeMediaQuery(),
    //home: ResponsividadeRowCol(),
    //home: ResponsividadeWrap(),
    //home: CurriculoWeb(), //Trabalho Do Sandro
    home:CurriculoWeb2(),
    //home: lojaVirtual(),
  ));
}
*/

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
      //home: ResponsividadeMediaQuery(),
      //home: ResponsividadeRowCol(),
      //home: ResponsividadeWrap(),
      //home: CurriculoWeb(), //Trabalho Do Sandro
      //home: lojaVirtual(),
      //home: CurriculoWeb2(),

      //home: Evento(),
      //home: modal_Evento(),
      home: MyHomePage(
        title: 'Teste',
      ),
    );
  }
}
