import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'count_notifire.dart';

final CounterProvider = StateNotifierProvider((ref) {
  return CounterNotifier();
});
