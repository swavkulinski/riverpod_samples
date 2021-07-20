
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_state.dart';
import 'view_model.dart';
import 'view_state.dart';


final appStateRepositoryProvider =
    Provider<AppStateRepository>((ref) => AppStateRepository());

final viewModelNotifierProvider =
    StateNotifierProvider<ViewModel,ViewState>((ref) => ViewModel(ref));
