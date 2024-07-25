import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class AlertDialogView extends StatelessWidget {
  const AlertDialogView({super.key});

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
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (ctx) {
                  return AlertDialog(
                    title: const Text('Aceitar'),
                    content: const Text('Você deseja aceitar?'),
                    buttonPadding: const EdgeInsets.all(20),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Não'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (ctx) {
                                return AlertDialog(
                                    title: const Text('Obrigada por aceitar'),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          'Sair',
                                          style: TextStyle(
                                            color: Colors.purple,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ]);
                              });
                        },
                        child: const Text('Sim'),
                      ),
                    ],
                  );
                });
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
