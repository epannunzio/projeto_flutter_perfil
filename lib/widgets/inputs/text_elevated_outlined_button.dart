import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class TextElevatedOutlinedButtonView extends StatelessWidget {
  const TextElevatedOutlinedButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('Enviar'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Enviar'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Enviar'),
          ),
        ],
      ),
    );
  }
}
