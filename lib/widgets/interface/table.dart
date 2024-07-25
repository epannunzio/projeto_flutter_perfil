import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: Table(
        border: TableBorder.all(),
        defaultColumnWidth:
            const FractionColumnWidth(.25), //ocupa apenas uma parte da tela
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            decoration: const BoxDecoration(color: Colors.amber),
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.grey,
              ),
            ],
          ),
          TableRow(
            decoration: const BoxDecoration(color: Colors.pink),
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.red,
              ),
            ],
          ),
          // Outras linhas com dados da lista
        ],
      ),
    );
  }
}
