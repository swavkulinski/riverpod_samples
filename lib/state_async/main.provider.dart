import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_testbed/state_async/view_model.dart';

import 'repository.dart';

final stateProvider = StateNotifierProvider<AppStateRepository, AppState>(
    (ref) => ref.watch(stateControllerProvider));

final stateControllerProvider = Provider((ref) => AppStateRepository());

final viewStateProvider = StateProvider<ViewState>((ref) => ViewState.empty());

final presenterProvider = Provider((ref) => ViewModel());
