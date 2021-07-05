import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/router/home.dart';
import 'package:riverpod_testbed/router/main.provider.dart';
import 'connection_details.dart';
import 'connections.dart';
import 'router.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    return MaterialApp.router(
      routeInformationParser: ref.watch(routeInformationParser),
      routerDelegate: ref.watch(routerDelegateProvider),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(context) => _ScaffoldWidget(
        currentIndex: 0,
        child: HomeWidget(),
      );
}

class ConnectionsPage extends StatelessWidget {
  @override
  Widget build(context) => _ScaffoldWidget(
        currentIndex: 1,
        child: ConnectionsWidget(),
      );
}

class ConnectionDetailsPage extends StatelessWidget {
  @override
  Widget build(context) => _ScaffoldWidget(
        currentIndex: 1,
        child: ConnectionDetailsWidget(),
      );
}

class _ScaffoldWidget extends ConsumerWidget {
  final int currentIndex;
  final Widget child;

  const _ScaffoldWidget({
    Key? key,
    required this.currentIndex,
    required this.child,
  }) : super(key: key);

  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Lab'),
      ),
      body: Center(
        child: child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.train), label: 'Connections')
        ],
        onTap: (index) {
          final delegate =
              (Router.of(context).routerDelegate as ConnectionRouterDelegate);
          if (index == 1)
            delegate.goSelection();
          else
            delegate.goHome();
        },
      ),
    );
  }
}
