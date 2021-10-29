import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter_pi_/widget/userModal.dart';
//import 'flutter_pi_/userModal.dart';

class modal_Evento extends StatefulWidget {
  const modal_Evento({Key? key}) : super(key: key);

  @override
  _modal_EventoState createState() => _modal_EventoState();
}

class _modal_EventoState extends State<modal_Evento> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Modal')),
        ),
        body: ModalRadial(),
      ),
    );
  }
}

class ModalRadial extends StatelessWidget {
  TextEditingController _nameInputController = TextEditingController();
  TextEditingController _descricaoInputController = TextEditingController();
  TextEditingController _dataInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              // retorna um objeto do tipo Dialog

              return AlertDialog(
                shape: Border.all(color: Colors.purple.shade400),
                //backgroundColor: Colors.purple[900],
                title: Text("Adicionar novo evento"),
                actions: [
                  TextField(
                    controller: _nameInputController,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.purple)),
                      hintText: 'Adicione um Nome',
                      //helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Nome',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.purple,
                      ),
                      prefixText: ' ',
                      //suffixText: 'USD',
                      //suffixStyle: const TextStyle(color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: largura / 6,
                  ),
                  TextField(
                    controller: _descricaoInputController,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.purple)),
                      hintText: 'Adicione uma Descrição',
                      //helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Descrição',
                      prefixIcon: const Icon(
                        Icons.description_sharp,
                        color: Colors.purple,
                      ),
                      prefixText: ' ',
                      //suffixText: 'USD',
                      //suffixStyle: const TextStyle(color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  TextField(
                    controller: _dataInputController,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide:
                              new BorderSide(color: Colors.purple.shade600)),
                      hintText: 'Adicione uma Data',
                      //helperText: 'Keep it short, this is just a demo.',
                      labelText: 'Data',
                      prefixIcon: const Icon(
                        Icons.data_saver_on_rounded,
                        color: Colors.purple,
                      ),
                      prefixText: ' ',
                      //suffixText: 'USD',
                      //suffixStyle: const TextStyle(color: Colors.green),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  // define os botões na base do dialogo
                  ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.purple),
                    child: Text(
                      "Adicionar",
                    ),
                    onPressed: () {
                      //_doSignUp();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Text('Adicionar Eventos'),
      ),
    );
  }

//   void _doSignUp() {
//     info newInfo = info(
//       nome: _nameInputController.text,
//       descricao: _descricaoInputController.text,
//       data: _dataInputController.text,
//     );
//   }
}
