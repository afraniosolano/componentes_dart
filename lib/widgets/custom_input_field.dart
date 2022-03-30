import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.counterText,
      this.icon,
      this.suffixIcon,
      this.textInputType,
      this.obscureText = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: true,
      keyboardType: textInputType,
      obscureText: obscureText,
      //initialValue: 'Afra',
      //textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        //print('$value');
        //if( value == null ) return 'Este campo es requerido';
        formValues[formProperty] = value;
      },
      validator: (value) {
        //print('$value');
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //prefixIcon: Icon(Icons.group),
        icon: icon == null ? null : Icon(icon),
        //border: OutlineInputBorder(
        //    borderRadius: BorderRadius.only(
        //        bottomLeft: Radius.circular(10)))
      ),
    );
  }
}
