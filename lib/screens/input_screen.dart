import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: 'Jesus Briceño',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value, $value');
                },
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';
                  return value.length < 3 ? 'Minimo 3 letrass' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Nombre del Usuario',
                    labelText: 'Nombre',
                    helperText: 'Solo Letras',
                    prefixIcon: Icon(Icons.verified_user_outlined),
                    suffixIcon: Icon(Icons.group_add_outlined)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
