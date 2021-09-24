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
        key: ref(formKeyProvider),
        child: Column(
          children: <Widget>[
            TextFormField(

              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ref(nonEmptyTextValidator),
              controller: ref(textControllerProvider('firstName')),
            ),
            Divider(height: 20,),
            TextFormField(
        
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ref(nonEmptyTextValidator),
              controller: ref(textControllerProvider('lastName')),
            ),
            Divider(height: 20,),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ref(isEmailValidator),
              controller: ref(textControllerProvider('email')),
            ),
            Divider(height: 20,),
            Row(
              children: [
                ElevatedButton(
                    onPressed: ref(userFormStateNotifierProvider) is EmptyFormState ? null : () {
                      ref(formStateProvider).reset();
                    } ,
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
