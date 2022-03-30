import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _whidth = 50;
  double _heigth = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final random = Random();
    _whidth = random.nextInt(300).toDouble() + 70;
    _heigth = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(255).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _whidth,
          height: _heigth,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_arrow_outlined,
          size: 35,
        ),
        onPressed: changeShape,
      ),
    );
  }
}
