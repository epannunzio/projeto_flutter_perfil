import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class SwitchListView extends StatefulWidget {
  const SwitchListView({super.key});

  @override
  State<SwitchListView> createState() => _SwitchListViewState();
}

class _SwitchListViewState extends State<SwitchListView> {
  var darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: SwitchListTile(
        selected: darkMode,
        value: darkMode,
        inactiveThumbColor: Colors.pink[700],
        title: const Text('Dark Mode'),
        subtitle: const Text('Ativar ou desativar dark mode'),
        secondary: Icon(Icons.dark_mode, color: Colors.blue[400]),
        onChanged: (value) {
          setState(() {
            //sempre que houver uma alteração de estado na tela precisamos do setState
            darkMode = value;
          });
        },
      ),
    );
  }
}
