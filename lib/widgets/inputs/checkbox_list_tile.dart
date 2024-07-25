import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class CheckboxListTileView extends StatefulWidget {
  const CheckboxListTileView({super.key});

  @override
  State<CheckboxListTileView> createState() => _CheckboxListTileViewState();
}

class _CheckboxListTileViewState extends State<CheckboxListTileView> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: CheckboxListTile(
        value: isChecked,
        selected: isChecked,
        activeColor: Colors.purple[600], //se estiver com check fica roxo
        title: const Text('Notificação'),
        subtitle: const Text('Ativar ou desativar notificações'),
        secondary: const Icon(Icons.notifications),
        onChanged: (value) {
          if (value != null) {
            //se o valor for diferente de nulo, executo o setState
            setState(() {
              isChecked = value; //o setState nos permite clicar ou desclicar
            });
          }
        },
      ),
    );
  }
}
