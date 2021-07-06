import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/state/main.provider.dart';

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
    final addA = ref(addAProvider);
    final addB = ref(addBProvider);
    final removeA = ref(removeAProvider);
    final removeB = ref(removeBProvider);
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
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(child: Text('+a'), onPressed: addA),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(child: Text('+b'), onPressed: addB),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(child: Text('-a'), onPressed: removeA),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(child: Text('-b'), onPressed: removeB),
            ),
          ],
        ));
  }
}

class _Text extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    final a = ref(stateProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'provider hashCode ${a.hashCode}',
        ),
        Divider(),
        Text(
          'a.a ${a.state.a}',
        ),
        Divider(),
        Text(
          '${a.hashCode}',
        ),
      ],
    );
  }
}
