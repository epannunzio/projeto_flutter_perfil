import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class TabBarViewView extends StatelessWidget {
  const TabBarViewView({super.key});

  final dog =
      'https://cdn.pixabay.com/photo/2019/07/23/13/51/shepherd-dog-4357790_640.jpg';
  final cat =
      'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262_640.jpg';
  final bird =
      'https://cdn.pixabay.com/photo/2017/06/18/04/42/maritaca-2414535_640.jpg';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            //criamos Tabs
            tabs: [
              Tab(
                text: 'Dog',
                icon: Icon(Icons.time_to_leave),
              ),
              Tab(
                icon: Icon(Icons.heart_broken),
                text: 'Cat',
              ),
              Tab(
                text: 'Bird',
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: ListMenu.get(context), //ListMenu é nossa rota
          ),
        ),
        body: TabBarView(children: [
          Image.network(dog),
          Image.network(cat),
          Image.network(bird),
        ]),
      ),
    );
  }
}
