import 'dart:math';

import 'package:flutter/material.dart';

import 'app_state.dart';
import 'view_model.dart';

class Bloc {
  final VoidCallback loadAppData;
  Bloc(this.loadAppData);
}


void loadAppStateUseCase(AppStateRepository repository,
  ViewModel viewModel) {
    viewModel.loading();

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
          undefined: (_) => viewModel.empty(),
          unauthorised: (_) => viewModel.error(),
          badRequest: (_) => viewModel.error(),
          appState: (appState) {
        repository.appState = repository.appState.copyWith(response: appState);
        viewModel.loaded(appState.value);
          });

    });
  }

