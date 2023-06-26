// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hms/features/home/presentation/home_page.dart';
import 'package:hms/routing.dart';
import 'package:hms_core/hms_core.dart';

final class HimalayaRouter extends AppRouter {
  HimalayaRouter() : super(initialLocation: '/');

  @override
  List<AppRouteBase> get routes {
    return [
      AppRoute(
        route: Routes.home,
        builder: (context, state) => const HomePage(),
      ),
    ];
  }

  @override
  FutureOr<String?>? redirect(BuildContext context, AppRouterState state) {
    return null;
  }
}

final routerProvider = AppRouterProvider((_) => HimalayaRouter());
