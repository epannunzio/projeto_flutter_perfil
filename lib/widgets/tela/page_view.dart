import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class PageViewView extends StatelessWidget {
  const PageViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: PageView(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.pink,
            alignment: Alignment.center,
            child: const Text(
              'Edilza',
              style: TextStyle(fontSize: 35),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text(
              'Victor',
              style: TextStyle(fontSize: 35),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text(
              'Laura',
              style: TextStyle(fontSize: 35),
            ),
          ),
        ],
      ),
    );
  }
}

//existe uma forma de criar essas páginas de forma mais complexa e eficaz
//criando classes como Page1 Page2 Page3 e assim podermos estilizar as 
//páginas de maneira exclusiva