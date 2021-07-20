import 'dart:math';

import 'package:riverpod/riverpod.dart';
import 'app_state.dart';
import 'main.provider.dart';
import 'view_state.dart';

class ViewModel extends StateNotifier<ViewState> {
  ProviderReference ref;
  ViewModel(this.ref) : super(Empty());

  Future<void> loadAppStateUseCase() async {
    state = Loading();

    final result = await Future.delayed(Duration(seconds: 2), () {
      final rnd = Random().nextInt(5);
      switch (rnd) {
        case 0:
          return Unauthorized();
        case 1:
          return BadRequest();
      }

      return AppStateResponse(Random().nextInt(32).toString());
    });
    final repository = ref.read(appStateRepositoryProvider);
    result.map(
        undefined: (_) => state = Empty(),
        unauthorised: (_) => state = Error(),
        badRequest: (_) => state = Error(),
        appState: (appState) {
          repository.appState =
              repository.appState.copyWith(response: appState);
          state = LoadedValue(appState.value);
        });
  }
}
