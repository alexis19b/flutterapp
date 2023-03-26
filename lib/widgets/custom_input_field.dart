import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        onChanged: (value) {
          print('value, $value');
        },
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo 3 letrass' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          // prefixIcon: Icon(Icons.verified_user_outlined),
          suffixIcon: suffixIcon == null ? null : Icon(icon),
          icon: icon == null ? null : Icon(suffixIcon),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(10),
          // topRight: Radius.circular(10)))
        ));
  }
}
