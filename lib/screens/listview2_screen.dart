import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Vaca y Pollito1',
    'Batman',
    'Superman',
    'MegaMan',
    'Mujer maravilla'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 2'),
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
                //leading: Icon(Icons.access_alarm_sharp),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                title: Text('${options[index]}'),
                onTap: () {},
              ),
          separatorBuilder: (_, __) => const Divider()),
    );
  }
}
