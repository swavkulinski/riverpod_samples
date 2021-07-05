import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state.dart';

final stateProvider = StateNotifierProvider<AppStateController, AppState>(
    (ref) => ref.watch(stateControllerProvider));

final stateControllerProvider = Provider((_) => AppStateController());
