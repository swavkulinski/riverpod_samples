import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/router/home.dart';

import 'connections.dart';

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
      home: Navigator(
        initialRoute: '/',
        pages: [
          MaterialPage(key: ValueKey('/'), child: HomePage()),
          MaterialPage(key: ValueKey('/connections'), child: ConnectionsPage()),
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}

class HomePage extends ConsumerWidget {
  HomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HomeWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.train), label: 'Connections')
        ],
        onTap: (index) {
    
        },
      ),
    );
  }
}

class ConnectionsPage extends ConsumerWidget {
  ConnectionsPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Lab'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConnectionsWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.train), label: 'Connections')
        ],
        onTap: (index) {
          switch (index) {
            case 1:
          }
        },
      ),
    );
  }
}
