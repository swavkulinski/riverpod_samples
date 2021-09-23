import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/form/form.provider.dart';
import 'package:riverpod_testbed/form/models.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {

  final GlobalKey _formKey = GlobalKey<FormState>();

  MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab'),
      ),
      body: Form(
        key: _formKey,
        
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: ref(userDataStateNotifierProvider.notifier).firstNameController,
              onChanged: (firstName) {
                ref(userDataStateNotifierProvider.notifier).firstName = firstName;
              },
            ),
            TextFormField(
              controller: ref(userDataStateNotifierProvider.notifier).lastNameController,
              onChanged: (lastName) {
                ref(userDataStateNotifierProvider.notifier).lastName = lastName;
              },
            ),
            TextFormField(
              controller: ref(userDataStateNotifierProvider.notifier).emailController,
              onChanged: (email) {
                ref(userDataStateNotifierProvider.notifier).email = email;
              },
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      ref(userFormStateNotifierProvider.notifier).reset();
                    },
                    child: Text('Reset')),
                SubmitButton(() {
                  ref(userFormStateNotifierProvider.notifier).submit();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Processing'),
                    ),
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SubmitButton extends ConsumerWidget {
  final VoidCallback? handler;

  SubmitButton(this.handler);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return ElevatedButton(
        onPressed: watch(userFormStateNotifierProvider) is CompletedFormState ? handler : null,
        child: Text('Submit'));
  }
}
