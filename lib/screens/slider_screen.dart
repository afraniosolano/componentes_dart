import 'package:componentes_application/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 50,
            max: 400,
            divisions: 10,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          /*Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),*/
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            },
          ),
          /*Switch(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            },
          ),*/
          AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: NetworkImage(
                    'https://wallery.app/dufovot/black-panther-wallpaper.webp'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
