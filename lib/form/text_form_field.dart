import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Regex providers
final _nameRegexProvider = Provider<RegExp>((_) => RegExp(r"^[A-Z][a-z-']*$"));
final _emailRegexProvider = Provider<RegExp>(
    (_) => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));

// Validator messages
final _invalidEmailMessageProvider = Provider<String>((_) => 'This is not a valid email');
final _invalidNameMessageProvider = Provider<String>((_) => 'Illegal characters used');

// Validators
final _emailValidatorProvider = Provider<String? Function(String?)>((ref) => (input) =>
    ref.read(_emailRegexProvider).hasMatch(input ?? '')
        ? null
        : ref.watch(_invalidEmailMessageProvider));

final _nameValidatorProvider = Provider<String? Function(String?)>((ref) => (input) =>
    ref.read(_nameRegexProvider).hasMatch(input ?? '')
        ? null
        : ref.watch(_invalidNameMessageProvider));

abstract class TextForm extends ConsumerWidget {
  final Function(String) onChanged;
  TextForm({Key? key, required this.onChanged}) : super(key: key);
  factory TextForm.email({Key? key, required Function(String) onChanged}) = _EmailForm;
  factory TextForm.name({Key? key, required Function(String) onChanged}) = _NameForm;
}

class _EmailForm extends TextForm {

  _EmailForm({Key? key, required Function(String) onChanged}) : super(key: key, onChanged: onChanged);

  @override
  Widget build(BuildContext context, ScopedReader watch) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.emailAddress,
        validator: watch(_emailValidatorProvider),
        onChanged: onChanged,
      );
}

class _NameForm extends TextForm{
  final Function(String) onChanged;
  _NameForm({Key? key, required this.onChanged}) : super(key: key, onChanged: onChanged);

  @override
  Widget build(BuildContext context, ScopedReader watch) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.name,
        validator: watch(_nameValidatorProvider),
        onChanged: onChanged,
      );
}
