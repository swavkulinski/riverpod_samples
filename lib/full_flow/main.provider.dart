import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_state.dart';
import 'bloc.dart';
import 'view_model.dart';

final viewModelProvider = Provider((_) => ViewModel());

final viewModelNotifierProvider =
    StateNotifierProvider((ref) => ref.watch(viewModelProvider));

final stateControllerProvider =
    Provider<AppStateRepository>((ref) => AppStateRepository());

final loadUseCaseProvider = Provider<LoadAppStateUseCase>((ref) =>
    LoadAppStateUseCase(
        ref.watch(stateControllerProvider), ref.watch(viewModelProvider)));

final blocProvider =
    Provider<Bloc>((ref) => Bloc(ref.watch(loadUseCaseProvider).execute));
