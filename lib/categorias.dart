<<<<<<< Updated upstream
import 'package:eventos_pi/tabela.dart';
=======
import 'package:eventos_pi/evento_Info.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';
import 'gerenciar_Eventos.dart';
import 'package:eventos_pi/repositorio/EventoRepositorio.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  _categoriadsState createState() => _categoriadsState();
}

class _categoriadsState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    final tabela = EventoRepositorio.tabela;

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

<<<<<<< Updated upstream
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back));
    SizedBox(width: 50);
    ElevatedButton(
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
                  //controller: _nameInputController,
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
                  //controller: _descricaoInputController,
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
                  //controller: _dataInputController,
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
    ); //MODAL

    var style;
    var inputDecoration = InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.purple.shade900,
        ),
        hintText: "Pesquisar",
        hintStyle: TextStyle(color: Colors.black, fontFamily: 'top'),
        fillColor: Colors.white,
        filled: true);
=======
    // child:
    // ElevatedButton(
    //   onPressed: () {
    //     showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         // retorna um objeto do tipo Dialog

    //         return AlertDialog(
    //           shape: Border.all(color: Colors.purple.shade400),
    //           //backgroundColor: Colors.purple[900],
    //           title: Text("Adicionar novo evento"),
    //           actions: [
    //             TextField(
    //               //controller: _nameInputController,
    //               decoration: new InputDecoration(
    //                 border: new OutlineInputBorder(
    //                     borderSide: new BorderSide(color: Colors.purple)),
    //                 hintText: 'Adicione um Nome',
    //                 //helperText: 'Keep it short, this is just a demo.',
    //                 labelText: 'Nome',
    //                 prefixIcon: const Icon(
    //                   Icons.person,
    //                   color: Colors.purple,
    //                 ),
    //                 prefixText: ' ',
    //                 //suffixText: 'USD',
    //                 //suffixStyle: const TextStyle(color: Colors.green),
    //               ),
    //             ),
    //             SizedBox(
    //               height: 10,
    //               width: largura / 6,
    //             ),
    //             TextField(
    //               //controller: _descricaoInputController,
    //               decoration: new InputDecoration(
    //                 border: new OutlineInputBorder(
    //                     borderSide: new BorderSide(color: Colors.purple)),
    //                 hintText: 'Adicione uma Descrição',
    //                 //helperText: 'Keep it short, this is just a demo.',
    //                 labelText: 'Descrição',
    //                 prefixIcon: const Icon(
    //                   Icons.description_sharp,
    //                   color: Colors.purple,
    //                 ),
    //                 prefixText: ' ',
    //                 //suffixText: 'USD',
    //                 //suffixStyle: const TextStyle(color: Colors.green),
    //               ),
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),

    //             TextField(
    //               //controller: _dataInputController,
    //               decoration: new InputDecoration(
    //                 border: new OutlineInputBorder(
    //                     borderSide:
    //                         new BorderSide(color: Colors.purple.shade600)),
    //                 hintText: 'Adicione uma Data',
    //                 //helperText: 'Keep it short, this is just a demo.',
    //                 labelText: 'Data',
    //                 prefixIcon: const Icon(
    //                   Icons.data_saver_on_rounded,
    //                   color: Colors.purple,
    //                 ),
    //                 prefixText: ' ',
    //                 //suffixText: 'USD',
    //                 //suffixStyle: const TextStyle(color: Colors.green),
    //               ),
    //             ),

    //             SizedBox(
    //               height: 10,
    //             ),
    //             // define os botões na base do dialogo
    //             ElevatedButton(
    //               style: TextButton.styleFrom(backgroundColor: Colors.purple),
    //               child: Text(
    //                 "Adicionar",
    //               ),
    //               onPressed: () {
    //                 //_doSignUp();
    //                 Navigator.of(context).pop();
    //               },
    //             ),
    //           ],
    //         );
    //       },
    //     );
    //   },
    //   child: const Text('Adicionar Eventos'),
    // ); //MODAL

>>>>>>> Stashed changes
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: TextField(
                maxLines: 1,
                style: TextStyle(color: Colors.black),
                decoration: inputDecoration,
              ),
            ),
            Container(
              color: Colors.white60,
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [Tabela()],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // retorna um objeto do tipo Dialog

                                return AlertDialog(
                                  shape:
                                      Border.all(color: Colors.purple.shade400),
                                  //backgroundColor: Colors.purple[900],
                                  title: Text("Adicionar novo evento"),
                                  actions: [
                                    TextField(
                                      //controller: _nameInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
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
                                      //controller: _descricaoInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
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
                                      //controller: _dataInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple.shade600)),
                                        hintText: 'Data',
                                        //helperText: 'Keep it short, this is just a demo.',
                                        labelText: 'Adicionar Data',
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
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.purple),
                                      child: Text(
                                        "Adicionar",
                                      ),
                                      onPressed: () {
                                        //_doSignUp();
                                        //print('Pressionou!!!');
                                        Navigator.of(context).pop(
                                            ListView.separated(
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int Evento_Info) {
                                                  return ListTile(
                                                    title: Text(
                                                        tabela[Evento_Info]
                                                            .Nome),
                                                    trailing: Text(
                                                        tabela[Evento_Info]
                                                            .data),
                                                  );
                                                },
                                                padding: EdgeInsets.all(16),
                                                separatorBuilder: (_, __) =>
                                                    Divider(),
                                                itemCount: tabela.length));
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Text('Adicionar Eventos'),
                        ),

                        //LISTA QUE NÃO ESTOU SABENDO IMPLEMENTAR, PARECE ESTA FUNCIONANDO

                        // ListView.separated(
                        //     itemBuilder:
                        //         (BuildContext context, int Evento_Info) {
                        //       return ListTile(
                        //         title: Text(tabela[Evento_Info].Nome),
                        //         trailing: Text(tabela[Evento_Info].data),
                        //       );
                        //     },
                        //     padding: EdgeInsets.all(16),
                        //     separatorBuilder: (_, __) => Divider(),
                        //     itemCount: tabela.length)
                      ],
                    ),
                  ),
                  //barra inferior à lista
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
