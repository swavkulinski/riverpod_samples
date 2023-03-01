import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/router/main.provider.dart';

import 'router.dart';

class ConnectionsWidget extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    return Material(
      child: Container(
        child: Column(
            children: ref
                .watch(connectionsProvider.notifier)
                .state
                .map(
                  (connection) => Ink(
                    child: GestureDetector(
                      onTap: () {
                        ref.watch(routerDelegateProvider).goDetails(connection);
                      },
                      child: ListTile(
                        title: Text('${connection.from} to ${connection.to}'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                )
                .toList()),
      ),
    );
  }
}
