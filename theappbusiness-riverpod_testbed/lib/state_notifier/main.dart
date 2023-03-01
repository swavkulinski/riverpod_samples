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
    final controller = ref(stateControllerProvider);
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
              child: FloatingActionButton(
                  child: Text('+a'), onPressed: controller.addA),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(
                  child: Text('+b'), onPressed: controller.addB),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(
                  child: Text('-a'), onPressed: controller.removeA),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(
                  child: Text('-b'), onPressed: controller.removeB),
            ),
          ],
        ));
  }
}

class _Text extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    final state = ref(stateProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'state hashCode ${state.hashCode}',
        ),
        Divider(),
        Text(
          'state.a : ${state.a}',
        ),
        Divider(),
        Text(
          'state.b : ${state.b}',
        ),
        Divider(),
      ],
    );
  }
}
