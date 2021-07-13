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
    final viewState = ref(viewModelNotifierProvider);
    final bloc = ref(blocProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('Lab'),
        ),
        body: viewState.when(
            empty: () => _Text('Empty'),
            loading: () => _Loading(),
            error: () => _Text('Error'),
            loaded: (value) => _Text(value)),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: FloatingActionButton(
                  child: Text('?'), onPressed: bloc.loadAppData),
            ),
          ],
        ));
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(),
      );
}

class _Text extends StatelessWidget {
  final String text;
  _Text(this.text);
  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
      ),
    );
  }
}
