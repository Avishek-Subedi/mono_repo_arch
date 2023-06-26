// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class HimalayaLocalization {
  const HimalayaLocalization();

  List<Locale> get supportedLocales => AppLocalizations.supportedLocales;

  List<LocalizationsDelegate<Object>> get delegates {
    return [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }
}

extension HimalayaLocalizationExtension on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}
