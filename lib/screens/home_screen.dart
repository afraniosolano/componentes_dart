import 'package:componentes_application/routes/app_route.dart';
import 'package:componentes_application/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
          itemCount: AppRoutes.menuOptions.length,
          itemBuilder: (context, index) => ListTile(
                leading: Icon(AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary,
                ),
                title: Text('${AppRoutes.menuOptions[index].name}'),
                onTap: () {
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider()),
    );
  }
}
