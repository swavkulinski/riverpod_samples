import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state.dart';

final notifierProvider = NotifierProvider<AppStateNotifier, AppState>(() => AppStateNotifier());
