import 'package:flutter/material.dart';
import 'package:riverpod_testbed/router/connection.dart';

class ConnectionDetailsWidget extends StatelessWidget {
  final Connection connection;

  ConnectionDetailsWidget({super.key, required this.connection});

  @override
  Widget build(context) => Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('From: ${connection.from} To: ${connection.to}'),
              Text('Departure: ${connection.departure.toLocal()}')
            ],
          ),
        ),
      );
}
