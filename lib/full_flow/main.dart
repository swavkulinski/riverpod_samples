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
    final viewNotifier = ref(viewModelNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab'),
      ),
      body: viewState.when(
          empty: () => const _Text('Empty'),
          loading: () => const _Loading(),
          error: () => const _Text('Error'),
          loaded: (value) => _Text(value)),
      floatingActionButton: FloatingActionButton(
          child: const Text('?'), onPressed: viewNotifier.loadAppStateUseCase),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();
  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(),
      );
}

class _Text extends StatelessWidget {
  final String text;
  const _Text(this.text);
  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
      ),
    );
  }
}
