import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState with _$ViewState {
  const factory ViewState.empty() = Empty;
  const factory ViewState.loading() = Loading;
  const factory ViewState.error() = Error;
  const factory ViewState.loaded(String value) = LoadedValue;
}