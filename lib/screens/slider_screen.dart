import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          //Algunos widgets tienen la función adaptativa para que se acoplen
          // al sistema operativo en uso
          Slider.adaptive(
            activeColor: AppTheme.primary,
            // divisions: 10,

            value: _sliderValue,
            onChanged: (value) {
              print(value);
              _sliderValue = value;
              setState(() {});
            },
            min: 50,
            max: 400,
          ),
          Image(
            image: const NetworkImage(
                'https://w7.pngwing.com/pngs/22/790/png-transparent-batman-family-catwoman-robin-comics-batman-heroes-superhero-comic-book.png'),
            fit: BoxFit.contain,
            width: _sliderValue,
          ),
          const SizedBox(
            height: 50,
          )
        ]),
      ),
    );
  }
}
