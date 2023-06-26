// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter/material.dart';
import 'package:hms/features/home/presentation/home_presenter.dart';
import 'package:hms_components/hms_components.dart';
import 'package:hms_core/hms_core.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entity = ref.watch(homePresenterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.appName),
      ),
      body: Center(
        child: entity.isLoading
            ? const CircularProgressIndicator()
            : Text(entity.text),
      ),
    );
  }
}
