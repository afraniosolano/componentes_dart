import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Vaca y Pollito',
    'Batman',
    'Superman',
    'MegaMan',
    'Mujer maravilla'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                    title: Text(e),
                  ))
              .toList(),
          Divider()
        ],
      ),
    );
  }
}
