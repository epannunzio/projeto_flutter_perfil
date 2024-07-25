import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class SnackbarView extends StatelessWidget {
  const SnackbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text(
                  'Já vai já?',
                ),
                action: SnackBarAction(
                  label: 'Sair',
                  onPressed: () {},
                  textColor: Colors.pink,
                  backgroundColor: Colors.purple[700],
                ),
                backgroundColor: Colors.amber[700],
                padding: const EdgeInsets.all(20),
              ),
            );
          },
          child: const Text(
            'Sair',
            style: TextStyle(
              height: 2,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
