import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_state.dart';
import 'view_model.dart';
import 'view_state.dart';

/// Business logic state
final appStateRepositoryProvider =
    Provider<AppStateRepository>((ref) => AppStateRepository());

/// View logic
final viewModelNotifierProvider =
    StateNotifierProvider<ViewModel, ViewState>((ref) => ViewModel(ref));

/// Business logic use case
final loadAppStateUseCase = Provider<Future<Response> Function()>(
    (ref) => () => Future<Response>.delayed(Duration(seconds: 2), () {
          final rnd = Random().nextInt(5);
          if (rnd == 0) return Unauthorized();
          if (rnd == 1) return BadRequest();
          return AppStateResponse(rnd.toString());
        }));
