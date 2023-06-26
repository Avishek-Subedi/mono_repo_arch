// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter/material.dart';

class HimalayaTheme extends StatefulWidget {
  const HimalayaTheme({
    required this.builder,
    required this.themeMode,
    super.key,
  });

  final Widget Function(HimalayaThemeConfig) builder;
  final ThemeMode themeMode;

  @override
  State<HimalayaTheme> createState() => _HimalayaThemeState();

  static HimalayaThemeConfig of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<_HimalayaThemeScope>();
    assert(result != null, 'No HimalayaTheme found in context');
    return result!.config;
  }
}

class _HimalayaThemeState extends State<HimalayaTheme> {
  late final HimalayaThemeConfig _config;

  @override
  void initState() {
    super.initState();
    _config = HimalayaThemeConfig(mode: widget.themeMode);
  }

  @override
  Widget build(BuildContext context) {
    return _HimalayaThemeScope(
      config: _config,
      child: widget.builder(_config),
    );
  }
}

class _HimalayaThemeScope extends InheritedWidget {
  const _HimalayaThemeScope({
    required this.config,
    required super.child,
  });

  final HimalayaThemeConfig config;

  @override
  bool updateShouldNotify(_HimalayaThemeScope oldWidget) {
    return oldWidget.config != config;
  }
}

class HimalayaThemeConfig {
  HimalayaThemeConfig({required this.mode}) {
    light = ThemeData(
      colorSchemeSeed: Colors.deepPurple,
      useMaterial3: true,
    );
    dark = ThemeData(
      colorSchemeSeed: Colors.deepPurple,
      brightness: Brightness.dark,
      useMaterial3: true,
    );
  }

  final ThemeMode mode;
  late final ThemeData light;
  late final ThemeData dark;
}
