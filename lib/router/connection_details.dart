import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/router/main.provider.dart';

class ConnectionDetailsWidget extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    final selectedConnection = ref.watch(selectedConnectionProvider);

    if (selectedConnection == null) return Container();
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'From: ${selectedConnection.from} To: ${selectedConnection.to}'),
            Text('Departure: ${selectedConnection.departure.toLocal()}')
          ],
        ),
      ),
    );
  }
}
