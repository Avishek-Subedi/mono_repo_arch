// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:hms_core/hms_core.dart';

enum Routes with RoutesMixin {
  home('/');

  const Routes(this.path);

  @override
  final String path;
}
