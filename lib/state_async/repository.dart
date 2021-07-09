import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_testbed/state_async/view_model.dart';

part 'repository.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({required Response response}) = _AppState;
}

class AppStateRepository extends StateNotifier<AppState> {
  AppStateRepository() : super(AppState(response: Undefined()));

  void set appState(AppState newAppState) => state = newAppState;
  AppState get appState => state;
}

class LoadAppStateUseCase {
  final AppStateRepository repository;
  final ViewModel viewModel;
  LoadAppStateUseCase(this.repository, this.viewModel);

  void execute() {
    Future.delayed(Duration(seconds: 2),
        () => AppStateResponse(Random().nextInt(32).toString())).then((value) {
      repository.appState = repository.appState.copyWith(response: value);
    });
  }
}

@freezed
class Response with _$Response {
  const factory Response.undefined() = Undefined;
  const factory Response.unauthorised() = Unauthorized;
  const factory Response.badRequest() = BadRequest;
  const factory Response.appState(String value) = AppStateResponse;
}
