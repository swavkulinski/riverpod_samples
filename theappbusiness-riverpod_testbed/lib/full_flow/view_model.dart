import 'package:riverpod/riverpod.dart';
import 'main.provider.dart';
import 'view_state.dart';

class ViewModel extends StateNotifier<ViewState> {
  final ProviderReference ref;
  ViewModel(this.ref) : super(Empty());

  /// Invokes use case and maps the result to ViewState
  Future<void> loadAppState() async {
    state = Loading();

    final result = await ref.watch(loadAppStateUseCase)();
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
