// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter/material.dart';
import 'package:hms/app/himalaya_app.dart';
import 'package:hms_core/hms_core.dart';

void main() {
  const app = ProviderScope(child: HimalayaApp());
  runApp(app);
}
