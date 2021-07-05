
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state.dart';

final stateProvider = StateProvider<AppState>((_) => AppState(a: 'a', b: 'b'));