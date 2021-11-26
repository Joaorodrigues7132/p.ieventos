import 'package:flutter/material.dart';

class Gerenciar_Eventos extends StatelessWidget {
  // get child => null;

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

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
    );

    // SizedBox(width: 50),
    // IconButton(
    //     onPressed: () {}, icon: Icon(Icons.arrow_forward)),

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
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.purple.shade900,
                    ),
                    hintText: "Pesquisar",
                    hintStyle:
                        TextStyle(color: Colors.black, fontFamily: 'top'),
                    fillColor: Colors.white,
                    filled: true),
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
                          children: const [
                            NomeColuna(texto: "Nome"),
                            NomeColuna(texto: "Data"),
                            NomeColuna(texto: "Editar"),
                            NomeColuna(texto: "Excluir"),
                          ],
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
                                      //controller: _nameInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText:
                                            'Adicione um Endereço do evento',
                                        //helperText: 'Keep it short, this is just a demo.',
                                        labelText: 'Endereço',
                                        prefixIcon: const Icon(
                                          Icons.apartment_rounded,
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
                                      //controller: _nameInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: 'Adicione um tipo de evento',
                                        //helperText: 'Keep it short, this is just a demo.',
                                        labelText: 'Tipo',
                                        prefixIcon: const Icon(
                                          Icons.fact_check_rounded,
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
                                      //controller: _nameInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText:
                                            'Adicione um Categoria do evento',
                                        //helperText: 'Keep it short, this is just a demo.',
                                        labelText: 'Categoria',
                                        prefixIcon: const Icon(
                                          Icons.category_rounded,
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
                                      //controller: _nameInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText: 'Adicione um Número de vagas',
                                        //helperText: 'Keep it short, this is just a demo.',
                                        labelText: 'Número de vagas',
                                        prefixIcon: const Icon(
                                          Icons.add_chart_outlined,
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
                                      //controller: _nameInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText:
                                            'Adicione um Data de início, término e inscrição',
                                        //helperText: 'Keep it short, this is just a demo.',
                                        labelText:
                                            'Data de início, término e inscrição',
                                        prefixIcon: const Icon(
                                          Icons.date_range_outlined,
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
                                      //controller: _nameInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText:
                                            'Adicione um Horário do evento',
                                        //helperText: 'Keep it short, this is just a demo.',
                                        labelText: 'Horário do evento',
                                        prefixIcon: const Icon(
                                          Icons.access_time_rounded,
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
                                      //controller: _nameInputController,
                                      decoration: new InputDecoration(
                                        border: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.purple)),
                                        hintText:
                                            'Adicione um Imagem do evento',
                                        //helperText: 'Keep it short, this is just a demo.',
                                        labelText: 'Imagem do evento',
                                        prefixIcon: const Icon(
                                          Icons.image_rounded,
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
                        //linha que será preenchida com o DB
                        //Row(children: [
                        // Estrutura para receber a imagem do aluno

                        // Container(
                        //   decoration: BoxDecoration(
                        //     image: DecorationImage(
                        //       image: AssetImage(''),
                        //       fit: BoxFit.fill,
                        //     ),
                        //     shape: BoxShape.circle,
                        //   ),
                        // ),

                        //Placeholder
                        // Container(
                        //   decoration: BoxDecoration(
                        //     shape: BoxShape.circle,
                        //     color: Colors.purple,
                        //   ),
                        //   child: SizedBox(
                        //     height: 50,
                        //     width: 50,
                        //   ),
                        // ),
                        // Text(
                        //   "Almoço Solidario",
                        //   style: TextStyle(color: Colors.black, fontSize: 15),
                        // )
                        //])
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

class NomeColuna extends StatelessWidget {
  const NomeColuna({
    Key? key,
    required this.texto,
  }) : super(key: key);
  final String texto;
  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(color: Colors.black, fontSize: 20),
    );
  }
}
