import 'dart:html';
import 'package:flutter/material.dart';

class Tabela extends StatefulWidget {
  const Tabela({ Key? key }) : super(key: key);

  @override
  _TabelaState createState() => _TabelaState();
}

class _TabelaState extends State<Tabela> {
  @override
  Widget build(BuildContext context) {
    return DataTable(columns: [
      DataColumn(label: Text('Nome do Evento')),
      DataColumn(label: Text('Data do Evento')),
      
      //DataColumn(label: Text('Actions'))
    ],
    rows: [
      DataRow(cells: [
        DataCell(Text('Observatorio')),
        DataCell(Text('30/10/2022')),
        //DataCell(Text('Setiings'))
        
      ]),
      DataRow(cells: [
        DataCell(Text('Beats Patos')),
        DataCell(Text('01/05/2022')),
      ]),
      DataRow(cells: [
        DataCell(Text('Palestra Flutter')),
        DataCell(Text('04/02/2022')),
      ]),
      DataRow(cells: [
        DataCell(Text('NLW RocketSeat ')),
        DataCell(Text('30/03/2022')),
      ]),
    ]);
    
  }
}