// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter/material.dart';
import 'package:hms/routing.dart';
import 'package:hms_components/hms_components.dart';
import 'package:hms_core/hms_core.dart';

class HimalayaApp extends ConsumerWidget {
  const HimalayaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    const localization = HimalayaLocalization();

    return HimalayaTheme(
      themeMode: ThemeMode.light,
      builder: (config) {
        return MaterialApp.router(
          onGenerateTitle: (context) => context.loc.appName,
          routerConfig: router.config,
          localizationsDelegates: localization.delegates,
          supportedLocales: localization.supportedLocales,
          locale: const Locale('ne', 'NP'),
          theme: config.light,
          darkTheme: config.dark,
          themeMode: config.mode,
        );
      },
    );
  }
}
