import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/state/main.provider.dart';
import 'package:riverpod_testbed/state/state.dart';

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
    final state = ref(stateProvider);
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
      floatingActionButton: FloatingActionButton(onPressed: () => state.state = AppState(a:state.state.a + 'a', b:state.state.b),),
    );
  }
}

class _Text extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    final a = ref(stateProvider);
    return Text(
      'hashCode ${a.hashCode} ${a.state.a}',
    );
  }
}
