import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:perfil/list.dart';

class DataTableView extends StatefulWidget {
  const DataTableView({super.key});

  @override
  State<DataTableView> createState() => _DataTableViewState();
}

class _DataTableViewState extends State<DataTableView> {
  var sort = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: DataTable(
        headingRowColor: WidgetStateProperty.all(Colors.red),
        sortAscending: sort,
        sortColumnIndex: 0,
        columns: [
          DataColumn(
            label: const Text('Nome'),
            tooltip: 'Este é o primeiro nome',
            numeric: true, //alinha a tabela na tela toda
            onSort: (columnIndex, ascending) {
              setState(() {
                sort = !sort;
              });
            },
          ),
          const DataColumn(
            label: Text('Idade'),
          )
        ],
        rows: [
          DataRow(
            selected: true,
            //onSelectChanged: (value) {}, checkbox
            color: WidgetStateProperty.all(Colors.grey[300]),
            cells: const [
              DataCell(
                Text('Edilza'),
              ),
              DataCell(
                Text('39'),
              )
            ],
          ),
          DataRow(
            color: WidgetStateProperty.all(Colors.grey[300]),
            cells: const [
              DataCell(
                Text('Laura'),
              ),
              DataCell(
                Text('17'),
              )
            ],
          ),
          DataRow(
            color: WidgetStateProperty.all(Colors.grey[300]),
            cells: const [
              DataCell(
                Text('Victor'),
              ),
              DataCell(
                Text('39'),
              )
            ],
          )
        ],
      ),
    );
  }
}
