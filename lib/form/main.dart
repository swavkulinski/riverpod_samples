import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/form/text_form_field.dart';
import 'package:riverpod_testbed/form/form.provider.dart';

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
  MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(context, ref) {
    final userData = ref(userDataStateNotifierProvider);
    final notifier = ref(userDataStateNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab'),
      ),
      body: Form(
        key: ref(formKeyProvider),
        child: Column(
          children: <Widget>[
            TextForm.name(
              onChanged: (value) => notifier.firstName = value,
            ),
            Divider(
              height: 20,
            ),
            TextForm.name(
              onChanged: (value) => notifier.lastName = value,
            ),
            Divider(
              height: 20,
            ),
            TextForm.email(
              onChanged: (value) => notifier.email = value,
            ),
            Divider(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: userData.isEmpty
                        ? null
                        : () {
                            notifier.reset();
                          },
                    child: Text('Reset')),
                ElevatedButton(
                    child: Text('Submit'),
                    onPressed: userData.isValid
                        ? () {
                            notifier.submit();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Processing'),
                              ),
                            );
                          }
                        : null),
              ],
            )
          ],
        ),
      ),
    );
  }
}
