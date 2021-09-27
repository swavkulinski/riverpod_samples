import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _nameRegexProvider = Provider<RegExp>((_) => RegExp(r"^[A-Z][a-z-']*$"));
final _emailRegexProvider = Provider<RegExp>(
    (_) => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));

final _invalidEmailMessageProvider = Provider<String>((_) => 'This is not a valid email');
final _invalidNameMessageProvider = Provider<String>((_) => 'Illegal characters used');

class EmailForm extends ConsumerWidget {
  final Function(String) onChanged;

  EmailForm({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.emailAddress,
        validator: (input) => watch(_emailRegexProvider).hasMatch(input ?? '')
            ? null
            : watch(_invalidEmailMessageProvider),
        onChanged: onChanged,
      );
}

class NameForm extends ConsumerWidget {
  final Function(String) onChanged;
  NameForm({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.name,
        validator: (input) => watch(_nameRegexProvider).hasMatch(input ?? '')
            ? null
            : watch(_invalidNameMessageProvider),
        onChanged: onChanged,
      );
}
