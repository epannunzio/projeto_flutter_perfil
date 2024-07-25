import 'package:flutter/material.dart';
import 'package:perfil/index.dart';
import 'package:perfil/widgets/dialog/alert_dialog.dart';
import 'package:perfil/widgets/dialog/snackbar.dart';
import 'package:perfil/widgets/inputs/checkbox_list_tile.dart';
import 'package:perfil/widgets/inputs/dropdown_button.dart';
import 'package:perfil/widgets/inputs/gesture_detector.dart';
import 'package:perfil/widgets/inputs/slider.dart';
import 'package:perfil/widgets/inputs/switch_list_tile.dart';
import 'package:perfil/widgets/inputs/text_elevated_outlined_button.dart';
import 'package:perfil/widgets/interface/data_table.dart';
import 'package:perfil/widgets/interface/list_tile.dart';
import 'package:perfil/widgets/interface/table.dart';
import 'package:perfil/widgets/scroll/draggable_scrollable_sheet.dart';
import 'package:perfil/widgets/scroll/list_wheel_scroll.dart';
import 'package:perfil/widgets/scroll/scrollbar.dart';
import 'package:perfil/widgets/tela/page_view.dart';
import 'package:perfil/widgets/tela/sliver_appbar.dart';
import 'package:perfil/widgets/tela/tab_bar.dart';

class ListMenu {
  ListMenu._();

  static List<Widget> get(BuildContext context) {
    return [
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const MyHomePage(),
            ),
          );
        },
        child: const Text('Perfil'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const TextElevatedOutlinedButtonView(),
            ),
          );
        },
        child: const Text('Text Elevated Outlined Button'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const DropdownButtonView(),
            ),
          );
        },
        child: const Text('Dropdown Button'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const SwitchListView(),
            ),
          );
        },
        child: const Text('Switch List'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const CheckboxListTileView(),
            ),
          );
        },
        child: const Text('Checkbox List'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const SliderView(),
            ),
          );
        },
        child: const Text('Slider'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const GestureDetectorView(),
            ),
          );
        },
        child: const Text('Gesture detector'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const SnackbarView(),
            ),
          );
        },
        child: const Text('Snackbar'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const AlertDialogView(),
            ),
          );
        },
        child: const Text('Alert Dialog tipo modal'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const ListTileView(),
            ),
          );
        },
        child: const Text('List Tile'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const TableView(),
            ),
          );
        },
        child: const Text('Table'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const DataTableView(),
            ),
          );
        },
        child: const Text('Data table'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const ScrollbarView(),
            ),
          );
        },
        child: const Text('Scrollbar'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const DraggableScrollableSheetView(),
            ),
          );
        },
        child: const Text('Draggable scrollable sheet'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const ListWheelScrollViewView(),
            ),
          );
        },
        child: const Text('List wheel'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const TabBarViewView(),
            ),
          );
        },
        child: const Text('Tab bar'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const SliverAppbarView(),
            ),
          );
        },
        child: const Text('Sliver appbar'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            //aqui criamos outra página ao clicar na palavra perfil
            MaterialPageRoute(
              builder: (ctx) => const PageViewView(),
            ),
          );
        },
        child: const Text('Page view'),
      ),
    ];
  }
}
