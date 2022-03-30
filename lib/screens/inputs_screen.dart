import 'package:componentes_application/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'firts_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'prueba@d.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de Usuario',
                  formProperty: 'firts_name',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido de Usuario',
                    formProperty: 'last_name',
                    formValues: formValues),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo de Usuario',
                  textInputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Password',
                    hintText: 'Password de Usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues),
                SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                  value: 'admin',
                  items: [
                    DropdownMenuItem(
                      value: 'admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'superuser',
                      child: Text('Super User'),
                    ),
                    DropdownMenuItem(
                      value: 'developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'junior',
                      child: Text('Junior'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'admin';
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print("Formulario no valido");
                        return;
                      }
                      //TODO imprimir valores del formulario
                      print(formValues);
                    },
                    child: SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
