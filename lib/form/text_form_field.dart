import 'package:flutter/material.dart';

class EmailForm extends StatelessWidget {
  final Function(String) onChanged;

  EmailForm({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.emailAddress,
        validator: (input) =>
            RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(input ?? '')
                ? null
                : 'This is not a valid email',
        onChanged: onChanged,
      );
}

class NameForm extends StatelessWidget {

  final Function(String) onChanged;
  NameForm({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.name,
        validator: (input) => RegExp(r"^[A-Z][a-z]*$").hasMatch(input ?? '')
            ? null
            : 'Illegal characters used',
            onChanged: onChanged,
      );
}
