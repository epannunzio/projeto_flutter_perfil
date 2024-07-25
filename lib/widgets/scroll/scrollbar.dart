import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class ScrollbarView extends StatelessWidget {
  const ScrollbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: ListMenu.get(context), //ListMenu é nossa rota
          ),
        ),
        body: Scrollbar(
          //o scrollbar sozinho não cria o sroll, ele precisa dos filhos
          child: SingleChildScrollView(
              child: Column(
            children: List.generate(
              100,
              (index) => Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.black,
              ),
            ),
          )),
        ));
  }
}
