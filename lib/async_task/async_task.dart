import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final asyncTaskProvider = FutureProvider<String>(
  (ref) => Future.delayed(Duration(seconds: 5), () => "Result"),
);
