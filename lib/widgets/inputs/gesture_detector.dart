import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class GestureDetectorView extends StatelessWidget {
  const GestureDetectorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: GestureDetector(
        //pra trocar por ex de Column pra Gesture basta clicar na palavra,
        //clicar na lampada e selecionar qualquer widget que ele já dará a estrutura
        //O GestureDetector torna tudo dentro dele clicável
        onTap: () {
          print('clicou no container');
        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
