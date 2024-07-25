import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class ListTileView extends StatefulWidget {
  const ListTileView({super.key});

  @override
  State<ListTileView> createState() => _ListTileViewState();
}

class _ListTileViewState extends State<ListTileView> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: ListTile(
        title: const Text('Edilza Rodrigues'),
        subtitle: const Text('SP'),
        trailing: const Icon(Icons.access_time),
        leading: const Icon(Icons.person),
        onLongPress: () {
          setState(() {
            isSelected = !isSelected; //ao manter o icone pressionado a cor muda
          });
        },
        dense: true, //deixa tudo mais "justo", menorzinho
        selected: isSelected,
        selectedColor: Colors.red, //aqui defino a cor ao ser pressionado
      ),
    );
  }
}
