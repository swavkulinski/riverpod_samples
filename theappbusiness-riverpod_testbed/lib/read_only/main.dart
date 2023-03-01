import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'main.provider.dart';

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
        title: Text('Lab'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _Text(),
          ],
        ),
      ),
    );
  }
}

class _Text extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    final a = ref(titleProvider);
    return Text(
  
      'hashCode ${a.hashCode} ${a.a}',
    );
  }
}
