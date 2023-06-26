// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class UseCase {
  UseCase(this.ref);

  final ProviderRef<Object> ref;
}

typedef UseCaseProvider<U extends UseCase> = Provider<U>;
