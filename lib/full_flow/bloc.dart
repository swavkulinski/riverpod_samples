import 'dart:math';

import 'package:flutter/material.dart';

import 'app_state.dart';
import 'view_model.dart';

class Bloc {
  final VoidCallback loadAppData;
  Bloc(this.loadAppData);
}

class LoadAppStateUseCase {
  final AppStateRepository repository;
  final ViewModel viewModel;
  LoadAppStateUseCase(this.repository, this.viewModel);

  void execute() {
    viewModel.viewState = Loading();

    Future.delayed(Duration(seconds: 2), () {
      final rnd = Random().nextInt(5);
      switch (rnd) {
        case 0:
          return Unauthorized();
        case 1:
          return BadRequest();
      }

      return AppStateResponse(Random().nextInt(32).toString());
    }).then((value) {
      value.map(
          undefined: (_) => viewModel.viewState = Empty(),
          unauthorised: (_) => viewModel.viewState = Error(),
          badRequest: (_) => viewModel.viewState = Error(),
          appState: (appState) {
        repository.appState = repository.appState.copyWith(response: appState);
        viewModel.viewState = LoadedValue(appState.value);
          });

    });
  }
}
