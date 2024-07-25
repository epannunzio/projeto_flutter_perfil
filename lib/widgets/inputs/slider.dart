import 'package:flutter/material.dart';
import 'package:perfil/list.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  var rating = 0.0;
  var selectedRange = const RangeValues(0.0, 100.0);

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
        children: [
          Slider(
            min: 0,
            max: 100,
            value: rating,
            label: 'Seu valor é $rating',
            divisions: 4, //estamos dividindo o valor max que é 100 em 4
            onChanged: (value) {
              setState(() {
                rating = value;
              });
            },
          ),
          RangeSlider(
              min: 0,
              max: 100,
              values: selectedRange,
              divisions: 6,
              labels: RangeLabels(
                'Flutter ${selectedRange.start}',
                'Dart ${selectedRange.end}',
              ),
              onChanged: (value) {
                setState(() {
                  selectedRange = value;
                });
              }),
        ],
      ),
    );
  }
}
