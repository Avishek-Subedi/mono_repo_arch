// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class Repository {}

typedef RepositoryProvider<R extends Repository> = Provider<R>;
