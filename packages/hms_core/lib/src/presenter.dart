// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hms_core/src/entity.dart';

abstract class Presenter<E extends Entity> extends StateNotifier<E> {
  Presenter(super.entity);

  E get entity => super.state;

  set entity(E entity) => super.state = entity;

  @override
  @Deprecated('Use entity instead')
  E get state => super.state;

  @override
  @Deprecated('Use entity instead')
  set state(E value) => super.state = value;
}

typedef PresenterProvider<P extends Presenter<E>, E extends Entity>
    = StateNotifierProvider<P, E>;
