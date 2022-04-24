import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders & Checks'),
      ),
      body: Column(children: [
        //Algunos widgets tienen la función adaptativa para que se acoplen
        // al sistema operativo en uso
        Slider.adaptive(
          activeColor: AppTheme.primary,
          // divisions: 10,

          value: _sliderValue,
          onChanged: _sliderEnable
              ? (value) {
                  print(value);
                  _sliderValue = value;
                  setState(() {});
                }
              : null,
          min: 50,
          max: 400,
        ),
        Checkbox(
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            }),
        CheckboxListTile(
          activeColor: AppTheme.primary,
          value: _sliderEnable,
          title: const Text('Habilitar Slider'),
          onChanged: (value) {
            setState(() {
              _sliderEnable = value ?? true;
            });
          },
        ),
        Switch(
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            }),
        SwitchListTile.adaptive(
          activeColor: AppTheme.primary,
          value: _sliderEnable,
          title: const Text('Habilitar Slider'),
          onChanged: (value) {
            setState(() {
              _sliderEnable = value;
            });
          },
        ),
        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'http://pngimg.com/uploads/batman/batman_PNG51.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
