// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:hms_core/hms_core.dart';

class HomeRepository extends Repository {
  Future<String> fetchText() {
    return Future.delayed(const Duration(seconds: 3), () => 'Hello World');
  }
}

final homeRepositoryProvider = RepositoryProvider<HomeRepository>(
  (ref) => HomeRepository(),
);
