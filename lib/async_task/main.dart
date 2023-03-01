import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/async_task/async_task.dart';

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
          title: Text('Async'),
        ),
        body: Center(
          child: ref.watch(asyncTaskProvider).when(
              loading: () => CircularProgressIndicator(),
              error: (_,__) => Text('Error'),
              data: (value) => Text(value)),
        ),
        );
  }
}
