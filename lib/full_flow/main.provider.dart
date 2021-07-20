import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_state.dart';
import 'bloc.dart';
import 'view_model.dart';

final _viewModelProvider = Provider((_) => ViewModel());

final _appStateRepositoryProvider =
    Provider<AppStateRepository>((ref) => AppStateRepository());

final _loadUseCaseProvider = Provider<VoidCallback>(
  (ref) => () => loadAppStateUseCase(
        ref.watch(_appStateRepositoryProvider),
        ref.watch(_viewModelProvider),
      ),
);

final blocProvider =
    Provider<Bloc>((ref) => Bloc(ref.watch(_loadUseCaseProvider)));

final viewModelNotifierProvider =
    StateNotifierProvider((ref) => ref.watch(_viewModelProvider));
