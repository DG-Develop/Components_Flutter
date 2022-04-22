import 'package:flutter/material.dart';
import 'package:fl_components/widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'David',
      'last_name': 'Gomez',
      'email': 'dgdband@gmail.com',
      'password': '123445',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(children: [
            CustomInputField(
              labelText: 'Nombre',
              hintText: 'Nombre de Usuario',
              formProperty: 'first_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Apellido',
              hintText: 'Apellido del usuario',
              formProperty: 'last_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Correo',
              hintText: 'Correo del usuario',
              keyboardType: TextInputType.emailAddress,
              formProperty: 'email',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Contraseña',
              hintText: 'Contraseña del usuario',
              obscureText: true,
              formProperty: 'password',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownButtonFormField<String>(
                value: 'Admin',
                items: const [
                  DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                  DropdownMenuItem(
                      child: Text('Supersuser'), value: 'Supersuser'),
                  DropdownMenuItem(
                      child: Text('Developer'), value: 'Developer'),
                  DropdownMenuItem(
                      child: Text('Jr. Developer'), value: 'Jr. Developer'),
                ],
                onChanged: (value) {
                  formValues['role'] = value ?? 'Admin';
                }),
            ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no valido');
                    return;
                  }
                  print(formValues);
                },
                child: const SizedBox(
                  child: Center(child: Text('Guardar')),
                  width: double.infinity,
                ))
          ]),
        ),
      )),
    );
  }
}
