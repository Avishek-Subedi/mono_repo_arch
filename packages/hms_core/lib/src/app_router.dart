// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

abstract base class AppRouter {
  AppRouter({String? initialLocation}) {
    _router = GoRouter(
      initialLocation: initialLocation,
      routes: routes,
      redirect: redirect,
    );
  }

  late final GoRouter _router;

  RouterConfig<Object> get config => _router;

  @protected
  List<RouteBase> get routes;

  @protected
  FutureOr<String?>? redirect(BuildContext context, GoRouterState state);

  void go(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
    Object? extra,
  }) {
    _router.goNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  void goLocation(String location, Object? extra) {
    _router.go(location, extra: extra);
  }
}

class AppRoute extends GoRoute {
  AppRoute({
    required RoutesMixin route,
    super.routes,
    super.builder,
    super.pageBuilder,
    super.redirect,
  }) : super(name: route.name, path: route.path);
}

mixin RoutesMixin on Enum {
  String get path;
}

typedef AppRouterState = GoRouterState;

typedef AppRouteBase = RouteBase;

typedef AppRouterProvider<A extends AppRouter> = Provider<A>;
