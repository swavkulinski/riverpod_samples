import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/state_async/view_model.dart';
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
    final viewModel = ref(viewStateProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('Lab'),
        ),
        body: viewModel.state.when(
            empty: () => Text('Empty'),
            loading: () => CircularProgressIndicator(),
            error: () => Text('Error'),
            loaded: (value) => Text(value)),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(
                  child: Text('?'), onPressed: null),
            ),
          ],
        ));
  }
}
/*
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
          'state.value : ${state.response.hashCode}',
        ),
        Divider(),
      ],
    );
  }
}
*/