import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class DropdownButtonView extends StatefulWidget {
  const DropdownButtonView({super.key});

  @override
  State<DropdownButtonView> createState() => _DropdownButtonViewState();
}

class _DropdownButtonViewState extends State<DropdownButtonView> {
  var value1; //criar variavel que vai receber os valores
  var value2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Column(
        children: [
          DropdownButtonFormField(
            //dropdown extendido
            value: value2, //chamar a variavel que vai receber os valores
            decoration: const InputDecoration(labelText: 'Sexo'),
            items: const [
              DropdownMenuItem(
                value: 'Masculino', //definir os valores fazendo sentido
                child: Text('Masculino'),
              ),
              DropdownMenuItem(
                value: 'Feminino',
                child: Text('Feminino'),
              ),
              DropdownMenuItem(
                value: 'Não sei',
                child: Text('Não sei'),
              ),
            ],
            onChanged: (value) {
              setState(() {
                value2 = value;
                //chamar a variavel conforme a mudança de estado da tela
              });
            },
          ),
          DropdownButton(
            value: value1, //chamar a variavel que vai receber os valores
            items: const [
              DropdownMenuItem(
                value: 'Ouro', //definir os valores fazendo sentido
                child: Text('Ouro'),
              ),
              DropdownMenuItem(
                value: 'Prata',
                child: Text('Prata'),
              ),
              DropdownMenuItem(
                value: 'Bronze',
                child: Text('Bronze'),
              ),
            ],
            onChanged: (value) {
              setState(() {
                value1 = value;
                //chamar a variavel conforme a mudança de estado da tela
              });
            },
          ),
        ],
      ),
    );
  }
}
