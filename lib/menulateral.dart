import 'dart:ui';

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final TabController controller;
  const CustomDrawer({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Categorias'),
            onTap: () {
              controller.animateTo(1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(
              'Gerenciar Eventos',
             
            ),
            onTap: () {
              controller.animateTo(0);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
