// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:eventos_pi/categorias.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'gerenciar_Eventos.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
    _controller.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        controller: _controller,
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Eventos'),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Gerenciar_Eventos(),
          Categorias(),
        ],
      ),
    );
  }

  _handleTabSelection() {
    if (_controller.indexIsChanging) {
      setState(() {
        _currentIndex = _controller.index;
      });
    }
  }
}
