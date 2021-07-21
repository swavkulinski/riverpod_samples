import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/router/main.provider.dart';

import 'router.dart';

class ConnectionsWidget extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    final selectedConnection = ref(selectedConnectionProvider);
    return Material(
      child: Container(
        child: Column(
            children: ref(connectionsProvider)
                .state
                .map(
                  (e) => Ink(
                    child: GestureDetector(
                      onTap: () {
                        selectedConnection.state = e;
                        (Router.of(context).routerDelegate
                                as ConnectionRouterDelegate)
                            .goDetails();
                      },
                      child: ListTile(
                        title: Text('${e.from} to ${e.to}'),
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
