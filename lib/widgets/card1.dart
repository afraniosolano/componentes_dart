import 'package:componentes_application/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            title: Text("Soy un titulo"),
            subtitle: Text(
                "Commodo mollit non laboris cupidatat ut laboris nisi occaecat velit dolor. Fugiat incididunt pariatur dolor mollit minim ipsum do elit commodo. Magna aliquip quis exercitation voluptate."),
          )
        ],
      ),
    );
  }
}
