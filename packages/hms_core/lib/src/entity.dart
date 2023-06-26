// Copyright (c) 2023. The Hridayangam Authors. All rights reserved.

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class Entity extends Equatable {
  const Entity();

  @override
  bool get stringify => true;

  @mustBeOverridden
  @override
  List<Object> get props => [];

  @useResult
  Entity copyWith();
}
