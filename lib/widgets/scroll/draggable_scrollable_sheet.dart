import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class DraggableScrollableSheetView extends StatelessWidget {
  const DraggableScrollableSheetView({super.key});

  final text =
      'Lorem ipsum dolor sit amet, consectetur adipis, lorem ipsum dolor sit amet, lorem ipsum dolor sit amet.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context), //ListMenu é nossa rota
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //centarlizamos o conteudo
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 30),
            alignment: Alignment.center,
            child: ClipOval(
              child: Image.network('https://github.com/epannunzio.png'),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            //aqui o Flutter sugeriu um Sizedbox mas não aparecia a imagem
            height: 500,
            child: DraggableScrollableSheet(
              minChildSize: 0.2,
              maxChildSize: 1,
              initialChildSize: 1,
              builder: (ctx, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  clipBehavior: Clip.none,
                  //deixa o conteudo com fundo transparente menos as imagens
                  child: Column(
                    children: [
                      Image.network('https://github.com/epannunzio.png'),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                      Text(text),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
