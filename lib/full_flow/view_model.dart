import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'view_model.freezed.dart';

@freezed
class ViewState with _$ViewState {
  const factory ViewState.empty() = Empty;
  const factory ViewState.loading() = Loading;
  const factory ViewState.error() = Error;
  const factory ViewState.loaded(String value) = LoadedValue;
}

class ViewModel extends StateNotifier<ViewState> {
  ViewModel() : super(Empty());

  set viewState(ViewState viewState) => state = viewState;

  ViewState get viewState => state;
}
