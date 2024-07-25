import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class ListWheelScrollViewView extends StatelessWidget {
  const ListWheelScrollViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: ListWheelScrollView(
        //cria scrolls diferentes
        itemExtent: 42,
        useMagnifier: true,
        magnification: 2,
        diameterRatio: 0.90,
        children: List.generate(
          100,
          (index) => Container(
            color: Colors.pink,
            alignment: Alignment.center,
            child: Text('$index'),
          ),
        ),
      ),
    );
  }
}
