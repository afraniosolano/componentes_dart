import 'package:componentes_application/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              min: 50,
              max: 400,
              divisions: 10,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              },
            ),
            Image(
              image: NetworkImage(
                  'https://img.europapress.es/fotoweb/fotonoticia_20190421172537_1200.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
