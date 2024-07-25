import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:perfil/controller.dart';
import 'package:perfil/list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 10),
              child: ClipOval(
                child: Image.network(
                  'https://github.com/epannunzio.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text('Perfil'),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.miscellaneous_services),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: 200,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 100,
                        child: ClipOval(
                          child: Image.network(
                              'https://github.com/epannunzio.png'),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.edit, size: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  card(
                      context: context,
                      title: 'Edilza Rodrigues',
                      subtitle: 'Dev Frontend')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Table(
                border: TableBorder.symmetric(
                  inside: BorderSide(
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                children: [
                  TableRow(
                    children: [
                      card(context: context, title: '39', subtitle: 'Projetos'),
                      card(context: context, title: '259', subtitle: 'Tasks'),
                      card(context: context, title: '10', subtitle: 'Grupos'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              height: 10,
            ),
            listTile(icon: Icons.work, title: 'Workspace'),
            listTile(icon: Icons.person, title: 'Edit Profile'),
            listTile(icon: Icons.notifications, title: 'Notifications'),
            listTile(icon: Icons.security, title: 'Security'),
            SwitchListTile(
              value: darkMode,
              onChanged: (value) {
                //aqui não precisa mais do setstate pois está sendo alterado no inicio
                darkMode = value;
                var isDark = darkMode ? ThemeMode.dark : ThemeMode.light;
                PerfilController.setThemeMode(isDark);
              },
              secondary: const Icon(
                Icons.dark_mode,
              ),
              title: const Text(
                'DarkTheme',
              ),
            ),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Tem certeza que deseja sair ?'),
                    action: SnackBarAction(
                      label: 'Sair',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: listTile(
                icon: Icons.logout,
                title: 'LogOut',
                color: Colors.red,
              ),
              //apenas no icone logout haverá interação com click pelo Gesture
            ),
          ],
        ),
      ),
    );
  }
}

Widget listTile({required IconData icon, required String title, Color? color}) {
  return ListTile(
    iconColor: color,
    textColor: color,
    leading: Icon(icon),
    title: Text(title),
  );
}

Widget card({
  required String title,
  required String subtitle,
  required BuildContext context,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      Text(
        subtitle,
      ),
    ],
  );
}

//o atalho stf cria um StatefulWidget
//o atalho stl cria um StatelessWidget
