import 'package:riverpod/riverpod.dart';
import 'view_state.dart';

class ViewModel extends StateNotifier<ViewState> {
  ViewModel() : super(Empty());

  void empty() => state = Empty();
  void loading() => state = Loading();
  void error() => state = Error();
  void loaded(String value) => state = LoadedValue(value);

  ViewState get viewState => state;
}
